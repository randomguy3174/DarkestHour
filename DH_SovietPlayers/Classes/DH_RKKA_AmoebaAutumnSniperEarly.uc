//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2020
//==============================================================================

class DH_RKKA_AmoebaAutumnSniperEarly extends DHSOVSniperRoles;

defaultproperties
{
    RolePawns(0)=(PawnClass=class'DH_SovietPlayers.DH_SovietAmoebaAutumnPawn',Weight=1.0)
    SleeveTexture=Texture'DHSovietCharactersTex.RussianSleeves.AmoebaSleeves'
    Headgear(0)=class'DH_SovietPlayers.DH_SovietSidecap'

    PrimaryWeapons(0)=(Item=class'DH_Weapons.DH_MN9130ScopedWeapon',AssociatedAttachment=class'ROInventory.ROMN9130AmmoPouch')
    PrimaryWeapons(1)=(Item=class'DH_Weapons.DH_SVT40ScopedWeapon',AssociatedAttachment=class'ROInventory.SVT40AmmoPouch')
}
