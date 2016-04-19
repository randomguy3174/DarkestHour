//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2015
//==============================================================================

class DH_USMortarmanWinter extends DH_US_Winter_Infantry;

defaultproperties
{
    bCanUseMortars=true
    MyName="Mortar Operator"
    AltName="Mortar Operator"
    Article="a "
    PluralName="Mortar Operators"
    MenuImage=texture'DHUSCharactersTex.Icons.IconMortarOperator'
    Models(0)="US_WinterInf1"
    Models(1)="US_WinterInf2"
    Models(2)="US_WinterInf3"
    Models(3)="US_WinterInf4"
    Models(4)="US_WinterInf5"
    SleeveTexture=texture'DHUSCharactersTex.Sleeves.US_sleeves'
    PrimaryWeapons(0)=(Item=class'DH_Weapons.DH_M1CarbineWeapon',AssociatedAttachment=class'DH_Weapons.DH_M1CarbineAmmoPouch')
    GivenItems(0)="DH_Mortars.DH_M2MortarWeapon"
    GivenItems(1)="DH_Equipment.DHBinocularsItem"
    Headgear(0)=class'DH_USPlayers.DH_AmericanHelmet1stEMa'
    Headgear(1)=class'DH_USPlayers.DH_AmericanHelmetWinter'
    PrimaryWeaponType=WT_SemiAuto
    Limit=1
}
