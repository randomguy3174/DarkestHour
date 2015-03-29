//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2015
//==============================================================================

class DH_Flak88Cannon extends DH_ATGunCannon;

defaultproperties
{
    bHasTurret=true // Matt: not a turret, but this is an easy way of making the player's view turn with the rotating gun
    SecondarySpread=0.00125
    ReloadSoundOne=sound'DH_Vehicle_Reloads.Reloads.reload_01s_01'
    ReloadSoundTwo=sound'DH_Vehicle_Reloads.Reloads.reload_02s_03'
    ReloadSoundThree=sound'DH_Vehicle_Reloads.Reloads.reload_01s_04'
    CannonFireSound(0)=SoundGroup'Vehicle_Weapons.Tiger.88mm_fire01'
    CannonFireSound(1)=SoundGroup'Vehicle_Weapons.Tiger.88mm_fire02'
    CannonFireSound(2)=SoundGroup'Vehicle_Weapons.Tiger.88mm_fire03'
    ProjectileDescriptions(0)="APCBC"
    RangeSettings(1)=100
    RangeSettings(2)=200
    RangeSettings(3)=300
    RangeSettings(4)=400
    RangeSettings(5)=500
    RangeSettings(6)=600
    RangeSettings(7)=700
    RangeSettings(8)=800
    RangeSettings(9)=900
    RangeSettings(10)=1000
    RangeSettings(11)=1100
    RangeSettings(12)=1200
    RangeSettings(13)=1300
    RangeSettings(14)=1400
    RangeSettings(15)=1500
    RangeSettings(16)=1600
    RangeSettings(17)=1700
    RangeSettings(18)=1800
    RangeSettings(19)=1900
    RangeSettings(20)=2000
    RangeSettings(21)=2200
    RangeSettings(22)=2400
    RangeSettings(23)=2600
    RangeSettings(24)=2800
    RangeSettings(25)=3000
    VehHitpoints(0)=(PointRadius=9.0,PointScale=1.0,PointBone="com_attachment",PointOffset=(X=-15.0,Z=17.0))
    VehHitpoints(1)=(PointRadius=16.0,PointScale=1.0,PointBone="com_attachment",PointOffset=(X=-15.0,Z=-5.0))
    YawBone="Turret"
    PitchBone="Gun"
    PitchUpLimit=15000
    PitchDownLimit=45000
    WeaponFireAttachmentBone="Barrel"
    GunnerAttachmentBone="com_attachment"
    WeaponFireOffset=20.0
    RotationsPerSecond=0.025
    FireInterval=4.0
    FireSoundVolume=512.0
    FireForce="Explosion05"
    ProjectileClass=class'DH_Guns.DH_Flak88CannonShell'
    ShakeRotMag=(Z=110.0)
    ShakeRotRate=(Z=1100.0)
    ShakeRotTime=2.0
    ShakeOffsetMag=(Z=5.0)
    ShakeOffsetRate=(Z=100.0)
    ShakeOffsetTime=2.0
    AIInfo(0)=(bLeadTarget=true,WarnTargetPct=0.75,RefireRate=0.5)
    AIInfo(1)=(bLeadTarget=true,WarnTargetPct=0.75,RefireRate=0.015)
    CustomPitchUpLimit=15474
    CustomPitchDownLimit=64990
    BeginningIdleAnim="Vt3485_driver_idle_close"
    InitialPrimaryAmmo=50
    InitialSecondaryAmmo=42
    PrimaryProjectileClass=class'DH_Guns.DH_Flak88CannonShell'
    SecondaryProjectileClass=class'DH_Guns.DH_Flak88CannonShellHE'
    Mesh=SkeletalMesh'DH_Flak88_anm.flak88_turret'
    Skins(0)=texture'MilitaryAxisSMT.Artillery.flak_88'
    Skins(1)=texture'Weapons1st_tex.Bullets.Bullet_Shell_Rifle'
    SoundVolume=130
    SoundRadius=200.0
}
