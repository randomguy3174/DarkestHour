//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2022
//==============================================================================

class DH_MG34SemiAutoFire extends DHMGSingleFire;

defaultproperties
{
    ProjectileClass=class'DH_Weapons.DH_MG34Bullet'
    TracerProjectileClass=class'DH_Weapons.DH_MG34TracerBullet'
    AmmoClass=class'ROAmmo.MG50Rd792x57DrumAmmo'
    TracerFrequency=7
    Spread=75.0
    RecoilRate=0.04
    PctHipMGPenalty=0.6

    // Recoil
    MaxVerticalRecoilAngle=250
    MaxHorizontalRecoilAngle=110

    FireSounds(0)=SoundGroup'Inf_Weapons.mg34.mg34_fire_single'
    ShellEjectClass=class'ROAmmo.ShellEject1st762x54mm'
    ShellIronSightOffset=(X=25.0,Y=0.0,Z=-10.0)
    ShellRotOffsetIron=(Pitch=3000)

    FireAnim="Shoot_Loop"
    FireLoopAnim="Shoot_Loop"
    FireEndAnim="Hip_Shoot_End"
    FireIronAnim="Bipod_shoot_single"
    FireIronLoopAnim="Bipod_Shoot_Loop"
    FireIronEndAnim="Bipod_Shoot_End"

    ShakeOffsetMag=(X=3.0,Y=1.0,Z=3.0)
    ShakeOffsetRate=(X=1000.0,Y=1000.0,Z=1000.0)
    ShakeOffsetTime=2.0
    ShakeRotMag=(X=50.0,Y=50.0,Z=50.0)
    ShakeRotRate=(X=10000.0,Y=10000.0,Z=10000.0)
    ShakeRotTime=2.0
}
