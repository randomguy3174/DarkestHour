//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2022
//==============================================================================

class DH_PanzerschreckFire extends DHRocketFire;

defaultproperties
{
    ProjectileClass=class'DH_Weapons.DH_PanzerschreckRocket'
    AmmoClass=class'DH_Weapons.DH_PanzerschreckAmmo'
    ExhaustDamageType=class'DH_Weapons.DH_PanzerschreckExhaustDamType'
    ExhaustDamage=210.0
    ExhaustLength=280.0
    Spread=510.0

    MuzzleBone="muzzle" //"warhead1"

    //** Effects **//
    FlashEmitterClass=class'DH_Effects.DHMuzzleFlash1stPanzerschreck'
    SmokeEmitterClass = class'ROEffects.ROMuzzleSmoke'
}
