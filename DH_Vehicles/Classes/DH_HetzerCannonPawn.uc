//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2019
//==============================================================================

class DH_HetzerCannonPawn extends DHAssaultGunCannonPawn;

defaultproperties
{
    PeriscopePositionIndex=1
    bIsPeriscopicGunsight=True
    GunsightOverlay=Texture'DH_VehicleOptics_tex.German.stug3_SflZF1a_sight'
    GunsightSize=0.556
    AmmoShellTexture=Texture'InterfaceArt_tex.Tank_Hud.panzer4F2shell'
    AmmoShellReloadTexture=Texture'InterfaceArt_tex.Tank_Hud.panzer4F2shell_reload'
    DriverPositions(0)=(ViewLocation=(X=37.000000,Y=-35.000000,Z=12.000000),ViewFOV=14.0,bDrawOverlays=True)
    DriverPositions(1)=(ViewLocation=(Z=10.000000),ViewFOV=7.200000,TransitionUpAnim="com_open",DriverTransitionAnim="VStug3_com_close",ViewPitchUpLimit=1200,ViewPitchDownLimit=64500,ViewPositiveYawLimit=12000,ViewNegativeYawLimit=-12000,bDrawOverlays=True)
    DriverPositions(2)=(TransitionDownAnim="com_close",DriverTransitionAnim="VStug3_com_open",ViewPitchUpLimit=5000,ViewPitchDownLimit=63500,ViewPositiveYawLimit=65535,ViewNegativeYawLimit=-65535,bExposed=True)
    DriverPositions(3)=(ViewFOV=12.000000,DriverTransitionAnim="stand_idleiron_binoc",ViewPitchUpLimit=5000,ViewPitchDownLimit=63500,ViewPositiveYawLimit=65535,ViewNegativeYawLimit=-65535,bDrawOverlays=True,bExposed=True)
    GunClass=Class'DH_Vehicles.DH_HetzerCannon'
    bHasAltFire=False
    DrivePos=(X=5.000000,Z=-29.000000)
    DriveAnim="VStug3_com_idle_close"
}
