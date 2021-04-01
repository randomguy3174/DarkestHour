//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2021
//==============================================================================

class DHWeaponFire extends ROWeaponFire;

var bool bIgnoresWeaponLock;

// Modified to make rounds disappear from the visible ammo belt when nearly out of ammo
event ModeDoFire()
{
    super.ModeDoFire();

    if (Level.NetMode != NM_DedicatedServer && DHProjectileWeapon(Weapon) != none)
    {
        DHProjectileWeapon(Weapon).UpdateAmmoBelt();
    }
}

defaultproperties
{
    SpreadStyle=SS_Random // this is actually assumed & hard-coded into spread functionality
}
