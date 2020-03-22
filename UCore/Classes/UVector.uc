//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2019
//==============================================================================

class UVector extends Object
    abstract;

static final function vector RandomRange(rangevector Range)
{
    local vector V;

    V.X = class'UFloat'.static.RandomRange(Range.X.Min, Range.X.Max);
    V.Y = class'UFloat'.static.RandomRange(Range.Y.Min, Range.Y.Max);
    V.Z = class'UFloat'.static.RandomRange(Range.Z.Min, Range.Z.Max);

    return V;
}

static final function float MaxElement(vector V)
{
    return FMax(V.X, FMax(V.Y, V.Z));
}

static final function float MinElement(vector V)
{
    return FMin(V.X, FMin(V.Y, V.Z));
}

static final function vector VLerp(float T, vector Start, vector End)
{
    return Start + ((End - Start) * T);
}

static final function vector MinComponent(vector A, vector B)
{
    local vector V;

    V.X = FMin(A.X, B.X);
    V.Y = FMin(A.Y, B.Y);
    V.Z = FMin(A.Z, B.Z);

    return V;
}

static final function vector MaxComponent(vector A, vector B)
{
    local vector V;

    V.X = FMax(A.X, B.X);
    V.Y = FMax(A.Y, B.Y);
    V.Z = FMax(A.Z, B.Z);

    return V;
}

static final function float SignedAngle(vector From, vector To, vector PlaneNormal)
{
    return ATan((From cross To) dot PlaneNormal, From dot To);
}

static function float InverseSquareLaw(vector PointA, vector PointB)
{
    return 1.0 / FMax(VSizeSquared(PointA - PointB), class'UFloat'.static.Epsilon());
}

static function bool IsInsideCylinder(vector Point, vector BaseA, vector BaseB, float Radius)
{
    local float D; // Distance to the cylinder axis
    local float T; // Position along the axis

    D = VSize((BaseB - BaseA) cross (BaseA - Point)) / VSize(BaseB - BaseA);
    T = ((Point - BaseA) dot (BaseB - BaseA)) / VSizeSquared(BaseB - BaseA);

    return T >= 0.0 && T <= 1.0 && D <= Radius;
}
