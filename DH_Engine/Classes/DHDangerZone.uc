//-----------------------------------------------------------
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2018
//-----------------------------------------------------------
class DHDangerZone extends Object
    abstract;

static final function vector IndicesToCoords(int X, int Y, float StepX, float StepY, vector Origin)
{
    local vector L;

    L.X = X * StepX;
    L.Y = Y * StepY;

    return L + Origin;
}

static final function vector GetInterpCoords(float Value, float ValueA, float ValueB, vector A, vector B)
{
    return class'UVector'.static.VLerp(FClamp((Value - ValueA) / (ValueB - ValueA), 0.0, 1.0), A, B);
}

// This function will return a positive number if the pointer is OUTSIDE of
// `TeamIndex` influence.
static function float GetIntensity(DHGameReplicationInfo GRI, float PointerX, float PointerY, byte TeamIndex)
{
    local float Intensity, IntensityA, IntensityB;
    local int TotalA, TotalB, i;
    local vector V1, V2;

    V2.X = PointerX;
    V2.Y = PointerY;

    for (i = 0; i < arraycount(GRI.DHObjectives); ++i)
    {
        if (GRI.DHObjectives[i] == none)
        {
            continue;
        }

        V1.X = GRI.DHObjectives[i].Location.X;
        V1.Y = GRI.DHObjectives[i].Location.Y;

        Intensity = 1.0 / FMax(VSizeSquared(V1 - V2), class'UFloat'.static.Epsilon());

        if (GRI.DHObjectives[i].IsActive() || GRI.DHObjectives[i].IsOwnedByTeam(TeamIndex))
        {
            ++TotalA;
            IntensityA += Intensity;
        }
        else
        {
            ++TotalB;
            IntensityB += Intensity;
        }
    }

    return FClamp(GRI.DangerZoneIntensityScale, 0.1, 2.0) * IntensityB / Max(TotalB, 1) - IntensityA / Max(TotalA, 1);
}

static function bool IsIn(DHGameReplicationInfo GRI, float PointerX, float PointerY, byte TeamIndex)
{
    if (!GRI.bIsDangerZoneEnabled)
    {
        return false;
    }

    return GetIntensity(GRI, PointerX, PointerY, TeamIndex) >= 0.0;
}

static final function array<Intbox> GetVertexIndices(int X, int Y, byte Mask, bool bSaddleIn)
{
    local array<Intbox> Indices;
    local Intbox North, East, West, South;

    North.X1 = X;
    North.Y1 = Y;
    North.X2 = X + 1;
    North.Y2 = Y;

    South.X1 = X;
    South.Y1 = Y + 1;
    South.X2 = X + 1;
    South.Y2 = Y + 1;

    West.X1 = North.X1;
    West.Y1 = North.Y1;
    West.X2 = South.X1;
    West.Y2 = South.Y1;

    East.X1 = North.X2;
    East.Y1 = North.Y2;
    East.X2 = South.X2;
    East.Y2 = South.Y2;

    if (Mask == 1 || Mask == 14)
    {
        // NW
        Indices[Indices.Length] = North;
        Indices[Indices.Length] = West;
    }
    else if (Mask == 2 || Mask == 13)
    {
        // NE
        Indices[Indices.Length] = North;
        Indices[Indices.Length] = East;
    }
    else if (Mask == 3 || Mask == 12)
    {
        // W-E
        Indices[Indices.Length] = West;
        Indices[Indices.Length] = East;
    }
    else if (Mask == 4 || Mask == 11)
    {
        // SE
        Indices[Indices.Length] = South;
        Indices[Indices.Length] = East;
    }
    else if ((Mask == 5 && bSaddleIn) || (Mask == 10 && !bSaddleIn))
    {
        // NE
        Indices[Indices.Length] = North;
        Indices[Indices.Length] = East;

        // SW
        Indices[Indices.Length] = South;
        Indices[Indices.Length] = West;
    }
    else if ((Mask == 5 && !bSaddleIn) || (Mask == 10 && bSaddleIn))
    {
        // NW
        Indices[Indices.Length] = North;
        Indices[Indices.Length] = West;

        // SE
        Indices[Indices.Length] = South;
        Indices[Indices.Length] = East;
    }
    else if (Mask == 6 || Mask == 9)
    {
        // N-S
        Indices[Indices.Length] = North;
        Indices[Indices.Length] = South;
    }
    else if (Mask == 7 || Mask == 8)
    {
        // SW
        Indices[Indices.Length] = South;
        Indices[Indices.Length] = West;
    }

    return Indices;
}

static function array<vector> GetContour(DHGameReplicationInfo GRI, byte TeamIndex, int Resolution, int SubResolution)
{
    local int i, j, k, PairIndex, InitLength, PointCount;
    local float XL, YL, StepX, StepY, PointInterval, AdjustedPointInterval;
    local vector Origin, CellCoords, V0, V1;
    local byte Mask;
    local array<byte> Normal;
    local array<float> Intensity;
    local array<Intbox> VertexIndices;
    local array<vector> Segments, Contour;
    local array<InterpCurve> LineStringsX;
    local array<InterpCurve> LineStringsY;

    Resolution = Clamp(Resolution, 2, 128);
    SubResolution = Max(2, SubResolution);

    XL = FMax(1.0, Abs(GRI.SouthWestBounds.X) + Abs(GRI.NorthEastBounds.X));
    YL = FMax(1.0, Abs(GRI.SouthWestBounds.Y) + Abs(GRI.NorthEastBounds.Y));

    StepX = XL / (Resolution - 1);
    StepY = YL / (Resolution - 1);

    Origin.X = GRI.SouthWestBounds.X;
    Origin.Y = GRI.NorthEastBounds.Y;

    // Get the normalized field
    for (i = 0; i < Resolution; ++i)
    {
        for (j = 0; j < Resolution; ++j)
        {
            CellCoords = static.IndicesToCoords(i, j, StepX, StepY, Origin);

            Intensity[Intensity.Length] = static.GetIntensity(GRI, CellCoords.X, CellCoords.Y, TeamIndex);

            if (Intensity[Intensity.Length - 1] >= 0)
            {
                Normal[Normal.Length] = 1;
            }
            else
            {
                Normal[Normal.Length] = 0;
            }
        }
    }

    // Calculate the segment coordinates
    for (i = 0; i < Ceil(Normal.Length / Resolution) - 1; ++i)
    {
        for (j = 0; j < Resolution - 1; ++j)
        {
            Mask = 0;
            Mask += Normal[class'UArray'.static.RavelIndices(i, j + 1, Resolution)] << 3;
            Mask += Normal[class'UArray'.static.RavelIndices(i + 1, j + 1, Resolution)] << 2;
            Mask += Normal[class'UArray'.static.RavelIndices(i + 1, j, Resolution)] << 1;
            Mask += Normal[class'UArray'.static.RavelIndices(i, j, Resolution)];

            CellCoords = static.IndicesToCoords(i, j, StepX, StepY, Origin);
            VertexIndices = GetVertexIndices(i, j, Mask, static.IsIn(GRI, CellCoords.X + StepX / 2.0, CellCoords.Y - StepY / 2.0, TeamIndex));

            for (k = 0; k < VertexIndices.Length; ++k)
            {
                Segments[Segments.Length] = GetInterpCoords(0,
                                                            Intensity[class'UArray'.static.RavelIndices(VertexIndices[k].X1, VertexIndices[k].Y1, Resolution)],
                                                            Intensity[class'UArray'.static.RavelIndices(VertexIndices[k].X2, VertexIndices[k].Y2, Resolution)],
                                                            static.IndicesToCoords(VertexIndices[k].X1, VertexIndices[k].Y1, StepX, StepY, Origin),
                                                            static.IndicesToCoords(VertexIndices[k].X2, VertexIndices[k].Y2, StepX, StepY, Origin));
            }
        }
    }

    // Sort segments into the InterpCurve
    i = 0;

    while (Segments.Length > 0)
    {
        // Choose a pivot segment
        LineStringsX.Insert(LineStringsX.Length, 1);
        LineStringsX[i].Points.Insert(LineStringsX[i].Points.Length, 1);
        LineStringsX[i].Points[LineStringsX[i].Points.Length - 1].OutVal = Segments[Segments.Length - 2].X;
        LineStringsX[i].Points.Insert(LineStringsX[i].Points.Length, 1);
        LineStringsX[i].Points[LineStringsX[i].Points.Length - 1].OutVal = Segments[Segments.Length - 1].X;

        LineStringsY.Insert(LineStringsY.Length, 1);
        LineStringsY[i].Points.Insert(LineStringsY[i].Points.Length, 1);
        LineStringsY[i].Points[LineStringsY[i].Points.Length - 1].OutVal = Segments[Segments.Length - 2].Y;
        LineStringsY[i].Points.Insert(LineStringsY[i].Points.Length, 1);
        LineStringsY[i].Points[LineStringsY[i].Points.Length - 1].OutVal = Segments[Segments.Length - 1].Y;

        Segments.Remove(Segments.Length - 2, 2);

        // Look for adjacent segments
        do
        {
            InitLength = LineStringsX[i].Points.Length;

            for (j = 0; j < Segments.Length; ++j)
            {
                PairIndex = j + 1 - int(Ceil(j % 2.0)) * 2;

                if (Segments[j].X ~= LineStringsX[i].Points[LineStringsX[i].Points.Length - 1].OutVal &&
                    Segments[j].Y ~= LineStringsY[i].Points[LineStringsY[i].Points.Length - 1].OutVal)
                {
                    LineStringsX[i].Points.Insert(LineStringsX[i].Points.Length, 1);
                    LineStringsX[i].Points[LineStringsX[i].Points.Length - 1].OutVal = Segments[PairIndex].X;

                    LineStringsY[i].Points.Insert(LineStringsY[i].Points.Length, 1);
                    LineStringsY[i].Points[LineStringsY[i].Points.Length - 1].OutVal = Segments[PairIndex].Y;
                }
                else if (Segments[j].X ~= LineStringsX[i].Points[0].OutVal &&
                         Segments[j].Y ~= LineStringsY[i].Points[0].OutVal)
                {
                    LineStringsX[i].Points.Insert(0, 1);
                    LineStringsX[i].Points[0].OutVal = Segments[PairIndex].X;

                    LineStringsY[i].Points.Insert(0, 1);
                    LineStringsY[i].Points[0].OutVal = Segments[PairIndex].Y;
                }
                else
                {
                    continue;
                }

                break;
            }

            if (InitLength != LineStringsX[i].Points.Length)
            {
                Segments.Remove(j - int(Ceil(j % 2.0)), 2);
            }
        }
        until(InitLength == LineStringsX[i].Points.Length);

        ++i;
    }

    // Generate the spline
    PointInterval = XL / (SubResolution - 1);

    for (i = 0; i < LineStringsX.Length; ++i)
    {
        for (j = 1; j < LineStringsX[i].Points.Length; ++j)
        {
            V0.X = LineStringsX[i].Points[j - 1].OutVal;
            V0.Y = LineStringsY[i].Points[j - 1].OutVal;
            V1.X = LineStringsX[i].Points[j].OutVal;
            V1.Y = LineStringsY[i].Points[j].OutVal;

            LineStringsX[i].Points[j].InVal = LineStringsX[i].Points[j - 1].InVal + VSize(V1 - V0);
            LineStringsY[i].Points[j].InVal = LineStringsX[i].Points[j].InVal;
        }

        PointCount = LineStringsX[i].Points[LineStringsX[i].Points.Length - 1].InVal / PointInterval;
        AdjustedPointInterval = LineStringsX[i].Points[LineStringsX[i].Points.Length - 1].InVal / PointCount;

        if (LineStringsX[i].Points[0].OutVal ~= LineStringsX[i].Points[LineStringsX[i].Points.Length - 1].OutVal &&
            LineStringsY[i].Points[0].OutVal ~= LineStringsY[i].Points[LineStringsX[i].Points.Length - 1].OutVal)
        {
            --PointCount;
        }

        for (j = 0; j < PointCount + 1; ++j)
        {
            Contour.Insert(Contour.Length, 1);
            Contour[Contour.Length - 1].X = InterpCurveEval(LineStringsX[i], j * AdjustedPointInterval);
            Contour[Contour.Length - 1].Y = InterpCurveEval(LineStringsY[i], j * AdjustedPointInterval);
        }
    }

    return Contour;
}

defaultproperties
{
}