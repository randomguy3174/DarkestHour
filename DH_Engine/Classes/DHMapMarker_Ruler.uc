//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2021
//==============================================================================
// A marker for measuring distances on the map. Any role can use it.

class DHMapMarker_Ruler extends DHMapMarker
    abstract;

static function string GetCaptionString(DHPlayer PC, DHGameReplicationInfo.MapMarker Marker)
{
    local vector PlayerLocation;
    local int Distance;
    local vector WorldLocation;

    WorldLocation = Marker.WorldLocation;

    if (PC != none && PC.Pawn != none)
    {
        PlayerLocation = PC.Pawn.Location;
        PlayerLocation.Z = 0.0;
        WorldLocation.Z = 0.0;

        Distance = int(class'DHUnits'.static.UnrealToMeters(VSize(WorldLocation - PlayerLocation)));

        return string((Distance / 5) * 5) $ "m";
    }

    return "";
}

defaultproperties
{
    MarkerName="Measure"
    IconMaterial=Texture'DH_InterfaceArt2_tex.Icons.Calipers'
    IconColor=(R=0,G=204,B=255,A=255)
    IconCoords=(X1=0,Y1=0,X2=31,Y2=31)
    GroupIndex=4
    bShouldShowOnCompass=true
    OverwritingRule=UNIQUE
    Scope=PERSONAL
    Permissions_CanSee(0)=(LevelSelector=TEAM,RoleSelector=ALL)
    Permissions_CanRemove(0)=(LevelSelector=TEAM,RoleSelector=ALL)
    Permissions_CanPlace(0)=(LevelSelector=TEAM,RoleSelector=ALL)
}
