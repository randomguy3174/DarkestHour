//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2021
//==============================================================================

class DH_RKKA_AmoebaAutumnEngineerLate extends DH_RKKA_AmoebaAutumnEngineerEarly;

defaultproperties
{
    RolePawns(0)=(PawnClass=class'DH_SovietPlayers.DH_SovietAmoebaAutumnLatePawn',Weight=1.0)

    Grenades(0)=(Item=class'DH_Weapons.DH_RPG43GrenadeWeapon')
    PrimaryWeapons(0)=(Item=class'DH_Weapons.DH_M38Weapon',AssociatedAttachment=class'ROInventory.ROMN9130AmmoPouch')
    PrimaryWeapons(1)=(Item=class'DH_Weapons.DH_M38Weapon',AssociatedAttachment=class'ROInventory.ROMN9130AmmoPouch')
}
