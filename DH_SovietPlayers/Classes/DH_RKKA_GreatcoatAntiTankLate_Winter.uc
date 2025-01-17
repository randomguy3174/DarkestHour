//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2022
//==============================================================================

class DH_RKKA_GreatcoatAntiTankLate_Winter extends DHSOVAntiTankRoles;

defaultproperties
{
    RolePawns(0)=(PawnClass=class'DH_SovietPlayers.DH_SovietGreatcoatBrownBagLatePawn_Winter',Weight=2.0)
    RolePawns(1)=(PawnClass=class'DH_SovietPlayers.DH_SovietGreatcoatGreyLatePawn_Winter',Weight=1.0)
    Headgear(0)=class'DH_SovietPlayers.DH_SovietHelmet'
    SleeveTexture=Texture'DHSovietCharactersTex.RussianSleeves.DH_RussianCoatSleeves'
    Grenades(0)=(Item=class'DH_Weapons.DH_RPG43GrenadeWeapon')
    GivenItems(0)="none"
    HeadgearProbabilities(0)=1.0
    HandType=Hand_Gloved
}
