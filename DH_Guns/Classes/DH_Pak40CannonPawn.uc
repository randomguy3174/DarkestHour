//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2014
//==============================================================================

class DH_Pak40CannonPawn extends DH_ATGunTwoCannonPawn;

defaultproperties
{
    OverlayCenterSize=0.570000
    CannonScopeOverlay=texture'DH_Artillery_Tex.ATGun_Hud.ZF_II_3x8_Pak'
    BinocPositionIndex=2
    WeaponFov=24.000000
    AmmoShellTexture=texture'InterfaceArt_tex.Tank_Hud.panzer4F2shell'
    AmmoShellReloadTexture=texture'InterfaceArt_tex.Tank_Hud.panzer4F2shell_reload'
    DriverPositions(0)=(ViewLocation=(X=30.000000,Y=-20.000000,Z=30.000000),ViewFOV=24.000000,PositionMesh=SkeletalMesh'DH_Pak40_anm.Pak40_turret',TransitionUpAnim="com_open",DriverTransitionAnim="crouch_idlehold_bayo",ViewPitchUpLimit=4005,ViewPitchDownLimit=64623,ViewPositiveYawLimit=5825,ViewNegativeYawLimit=-5825,bDrawOverlays=true,bExposed=true)
    DriverPositions(1)=(ViewFOV=90.000000,PositionMesh=SkeletalMesh'DH_Pak40_anm.Pak40_turret',TransitionDownAnim="com_close",DriverTransitionAnim="stand_idlehip_binoc",ViewPitchUpLimit=6000,ViewPitchDownLimit=63500,ViewPositiveYawLimit=20000,ViewNegativeYawLimit=-20000,bExposed=true)
    DriverPositions(2)=(ViewFOV=12.000000,PositionMesh=SkeletalMesh'DH_Pak40_anm.Pak40_turret',DriverTransitionAnim="stand_idleiron_binoc",ViewPitchUpLimit=6000,ViewPitchDownLimit=63500,ViewPositiveYawLimit=20000,ViewNegativeYawLimit=-20000,bDrawOverlays=true,bExposed=true)
    GunClass=class'DH_Guns.DH_Pak40Cannon'
    CameraBone="Turret"
    RotateSound=sound'Vehicle_Weapons.Turret.manual_gun_traverse'
    PitchSound=sound'Vehicle_Weapons.Turret.manual_turret_elevate'
    RotateAndPitchSound=sound'Vehicle_Weapons.Turret.manual_gun_traverse'
    bFPNoZFromCameraPitch=true
    DrivePos=(X=-20.000000,Z=-44.000000)
    DriveAnim="crouch_idlehold_bayo"
    EntryRadius=200.000000
    bKeepDriverAuxCollision=true
    SoundVolume=130
}
