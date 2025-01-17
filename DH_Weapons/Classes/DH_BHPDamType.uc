//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2022
//==============================================================================

class DH_BHPDamType extends DHSmallCaliberDamageType
    abstract;

defaultproperties
{
    WeaponClass=class'DH_Weapons.DH_BHPWeapon'
    HUDIcon=Texture'InterfaceArt_tex.deathicons.b9mm'
    KDamageImpulse=750.0
    KDeathVel=100.0
    KDeathUpKick=0.0
}
