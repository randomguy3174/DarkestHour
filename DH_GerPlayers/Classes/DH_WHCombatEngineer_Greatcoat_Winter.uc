//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2021
//==============================================================================

class DH_WHCombatEngineer_Greatcoat_Winter extends DHGEEngineerRoles;

defaultproperties
{
    RolePawns(0)=(PawnClass=class'DH_GerPlayers.DH_GermanGreatCoatPawn_Winter',Weight=1.0)
    SleeveTexture=Texture'Weapons1st_tex.Arms.GermanCoatSleeves'
    DetachedArmClass=class'ROEffects.SeveredArmGerGreat'
    DetachedLegClass=class'ROEffects.SeveredLegGerGreat'
    Headgear(0)=class'DH_GerPlayers.DH_HeerHelmetThree'
    Headgear(1)=class'DH_GerPlayers.DH_HeerHelmetTwo'
    
    HandType=Hand_Gloved
    GlovedHandTexture=Texture'Weapons1st_tex.Arms.hands_gergloves'
    BareHandTexture=Texture'Weapons1st_tex.Arms.hands_gergloves'
    CustomHandTexture=Texture'Weapons1st_tex.Arms.hands_gergloves'
}