//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2018
//==============================================================================

class DHMapMarker_FireSupport extends DHMapMarker
    abstract;

var color           ActivatedIconColor; // for off-map artillery requests

var TexRotator      ArrowIconMaterial;
var IntBox          ArrowIconCoords;

static function string GetCaptionString(DHPlayer PC, DHGameReplicationInfo.MapMarker Marker)
{
    local string SquadName;
    local DHSquadReplicationInfo SRI;

    if (PC == none || PC.Pawn == none || PC.GameReplicationInfo == none)
    {
        return "";
    }

    if (PC.IsArtillerySpotter() && PC.GetSquadIndex() == Marker.SquadIndex)
    {
        return class'TimeSpan'.static.ToString(Marker.ExpiryTime - PC.GameReplicationInfo.ElapsedTime);
    }
    else
    {
        SRI = PC.SquadReplicationInfo;
        SquadName = SRI.GetSquadName(PC.GetTeamNum(), Marker.SquadIndex);

        return SquadName @ "(" $ default.MarkerName $ ")" @ "-" @ GetDistanceString(PC, Marker);
    }
}

static function color GetIconColor(DHPlayer PC, DHGameReplicationInfo.MapMarker Marker)
{
    if (PC == none)
    {
        return default.IconColor;
    }

    if (PC.IsArtilleryOperator())
    {
        if (PC.ArtillerySupportSquadIndex == Marker.SquadIndex)
        {
            return default.ActivatedIconColor;
        }
    }
    else if (PC.IsArtillerySpotter())
    {
        if (PC.GetSquadIndex() == Marker.SquadIndex)
        {
            return default.ActivatedIconColor;
        }
    }

    return default.IconColor;
}

static function GetIconMaterial(DHPlayer PC, DHGameReplicationInfo.MapMarker Marker, out Material Material, out IntBox Coords)
{
    local DHGameReplicationInfo GRI;
    local DHGameReplicationInfo.MapMarker HitMarker;
    local vector Direction;
    local float ArrowRotation;
    local TexRotator TR;

    if (PC != none && PC.GetPersonalMarkerWithClass(class'DHMapMarker_ArtilleryHit', HitMarker))
    {
        // If the OptionalByte of the hit marker is non-zero, this means that
        // the artillery hit wasn't close enough to any of the fire support markers.
        // When this happens, display an arrow pointing in the direction of the
        // hit so that the gunner is not completely in the dark as to where their
        // round landed.
        if (HitMarker.OptionalByte != 0 && HitMarker.CreationTime > Marker.CreationTime)
        {
            Material = default.ArrowIconMaterial;
            Coords = default.ArrowIconCoords;
            Direction = Normal(Marker.WorldLocation - HitMarker.WorldLocation);
            ArrowRotation = class'UUnits'.static.RadiansToUnreal(Atan(Direction.X, Direction.Y));

            GRI = DHGameReplicationInfo(PC.GameReplicationInfo);

            if (GRI != none)
            {
                ArrowRotation -= class'UUnits'.static.DegreesToUnreal(GRI.OverheadOffset);
            }

            TR = TexRotator(Material);

            if (TR != none)
            {
                TR.Rotation.Yaw = ArrowRotation;
            }

            return;
        }
    }

    super.GetIconMaterial(PC, Marker, Material, Coords);
}

defaultproperties
{
    IconColor=(R=255,G=0,B=0,A=100)
    ActivatedIconColor=(R=255,G=0,B=0,A=255)
    IconMaterial=Texture'InterfaceArt_tex.OverheadMap.overheadmap_Icons'
    IconCoords=(X1=0,Y1=0,X2=63,Y2=63)
    GroupIndex=5
    LifetimeSeconds=300
    Type=MT_OnMapArtilleryRequest
    OverwritingRule=UNIQUE_PER_GROUP
    Scope=SQUAD
    RequiredSquadMembers=2
    Cooldown=10
    Permissions_CanSee(0)=(LevelSelector=TEAM,RoleSelector=ERS_ARTILLERY_OPERATOR)
    Permissions_CanSee(1)=(LevelSelector=SQUAD,RoleSelector=ERS_ARTILLERY_SPOTTER)
    Permissions_CanRemove(0)=(LevelSelector=SQUAD,RoleSelector=ERS_ARTILLERY_SPOTTER)
    Permissions_CanPlace(0)=ERS_ARTILLERY_SPOTTER
    OnPlacedExternalNotifications(0)=(RoleSelector=ERS_ARTILLERY_OPERATOR,Message=class'DHFireSupportMessage',MessageIndex=3)
    OnPlacedMessage=class'DHFireSupportMessage'
    OnPlacedMessageIndex=0
}
