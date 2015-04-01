//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2015
//==============================================================================

class DH_WKOfficer extends DH_Kriegsmarine;

defaultproperties
{
    bIsArtilleryOfficer=true
    MyName="Officer"
    AltName="Zugf�hrer"
    Article="a "
    PluralName="Officers"
    MenuImage=texture'DHGermanCharactersTex.Icons.Zugfuhrer'
    Models(0)="WK_1"
    Models(1)="WK_2"
    Models(2)="WK_3"
    Models(3)="WK_4"
    SleeveTexture=texture'Weapons1st_tex.Arms.german_sleeves'
    PrimaryWeapons(0)=(Item=class'DH_Weapons.DH_MP40Weapon',Amount=6,AssociatedAttachment=class'ROInventory.ROMP40AmmoPouch')
    SecondaryWeapons(0)=(Item=class'DH_Weapons.DH_P08LugerWeapon',Amount=1)
    SecondaryWeapons(1)=(Item=class'DH_Weapons.DH_P38Weapon',Amount=1)
    Grenades(0)=(Item=class'DH_Equipment.DH_NebelGranate39Weapon',Amount=2)
    Grenades(1)=(Item=class'DH_Equipment.DH_OrangeSmokeWeapon',Amount=1)
    GivenItems(0)="DH_Engine.DH_BinocularsItem"
    Headgear(0)=class'DH_GerPlayers.DH_KriegsmarineHelmet'
    PrimaryWeaponType=WT_SMG
    bEnhancedAutomaticControl=true
    Limit=1
}
