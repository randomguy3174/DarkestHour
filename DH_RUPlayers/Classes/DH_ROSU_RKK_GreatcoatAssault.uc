//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2016
//==============================================================================

class DH_ROSU_RKK_GreatcoatAssault extends DH_ROSU_RKK_Greatcoat;

defaultproperties
{
    MyName="Assault Trooper"
    AltName="Avtomatchik"
    Article="an "
    PluralName="Assault Troops"
    PrimaryWeaponType=WT_Assault
    PrimaryWeapons(0)=(Item=class'DH_Weapons.DH_PPSH41Weapon',Amount=6,AssociatedAttachment=class'ROInventory.ROPPSh41AmmoPouch')
    Grenades(0)=(Item=class'DH_Weapons.DH_F1GrenadeWeapon',Amount=2)
    Headgear(0)=class'DH_RUPlayers.DH_ROSovietHelmet'
    Headgear(1)=class'DH_RUPlayers.DH_ROSovietHelmet'
    Headgear(2)=class'DH_RUPlayers.DH_ROSovietHelmet'
    bEnhancedAutomaticControl=true
    limit=3
}
