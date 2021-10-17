//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2018
//==============================================================================

class DHMapMarker_ArtilleryHit extends DHMapMarker
    abstract;

// TODO: i don't think this should be responsible for storing the range
var int VisibilityRange; // [m]

// TODO: override CanSee
static function bool CanSeeMarker(DHPlayerReplicationInfo PRI, DHGameReplicationInfo.MapMarker Marker)
{
    if (Marker.OptionalByte == 1)
    {
        // An optional byte value of 1 means that the hit occured outside the
        // range of any spotted targets, and so it should be invisible.
        return false;
    }

    return super.CanSeeMarker(PRI, MarkeR);
}

defaultproperties
{
    IconMaterial=MaterialSequence'DH_InterfaceArt2_tex.Artillery.HitMarker'
    IconCoords=(X1=0,Y1=0,X2=31,Y2=31)
    GroupIndex=6
    Type=MT_ArtilleryHit
    OverwritingRule=UNIQUE_PER_GROUP
    Scope=PERSONAL
    LifetimeSeconds=15
    Permissions_CanSee(0)=(LevelSelector=TEAM,RoleSelector=ERS_ALL)
    Permissions_CanPlace(0)=ERS_ALL
    VisibilityRange=150
}
