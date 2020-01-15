//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2019
//==============================================================================

class DH_LWP_StandardFireteamLeaderLate extends DHPOLCorporalRoles;

defaultproperties
{
    RolePawns(0)=(PawnClass=class'DH_SovietPlayers.DH_SovietTunicSergeantEarlyPawn',Weight=1.0)
    Headgear(0)=class'DH_SovietPlayers.DH_SovietSidecap'
    SleeveTexture=Texture'Weapons1st_tex.russian_sleeves'
	
	//to do: proper LWP uniform
	//Wojsko Polskie did use red army uniform, but they also (at least occisionally) used elements of polish uniform, and most importantly, used their own insignia (their own collartabs)
	//in the future there should at least be polish collartabs and polish army cap
	//for now, early soviet tunic resembles LWP the most, and incorrect insignia is somewhat covered by folded greatcoat
	
    PrimaryWeapons(0)=(Item=class'DH_Weapons.DH_PPSH41_stickWeapon',AssociatedAttachment=class'ROInventory.ROPPSh41AmmoPouch')
    PrimaryWeapons(1)=(Item=class'DH_Weapons.DH_PPS43Weapon',AssociatedAttachment=class'ROInventory.ROPPSh41AmmoPouch')
    PrimaryWeapons(2)=(Item=class'DH_Weapons.DH_MP40Weapon',AssociatedAttachment=class'ROInventory.SVT40AmmoPouch')
	
    SecondaryWeapons(0)=(Item=class'DH_Weapons.DH_P08LugerWeapon')
    SecondaryWeapons(1)=(Item=class'DH_Weapons.DH_Nagant1895Weapon')
    SecondaryWeapons(2)=(Item=class'DH_Weapons.DH_ViSWeapon')
}
