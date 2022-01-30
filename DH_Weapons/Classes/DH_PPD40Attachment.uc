//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2022
//==============================================================================

class DH_PPD40Attachment extends DHHighROFWeaponAttachment;

defaultproperties
{
    Mesh=SkeletalMesh'Weapons3rd_anm.ppd40'
    MenuImage=Texture'DH_InterfaceArt_tex.weapon_icons.ppd40_icon'
    mMuzFlashClass=class'ROEffects.MuzzleFlash3rdPPSH'
    ROShellCaseClass=class'ROAmmo.RO3rdShellEject762x25mm'

    ClientProjectileClass=class'DH_Weapons.DH_PPD40Bullet'

    WA_Idle="idle_ppd40"
    WA_IdleEmpty="idle_ppd40"
    WA_Fire="shoot_ppd40"
    WA_Reload="reloadempty_ppd40"
    WA_ReloadEmpty="reloadhalf_ppd40"
    WA_ProneReload="prone_reloadhalf_ppd40"
    WA_ProneReloadEmpty="prone_reloadempty_ppd40"

    PA_MovementAnims(0)="stand_jogF_ppsh"
    PA_MovementAnims(1)="stand_jogB_ppsh"
    PA_MovementAnims(2)="stand_jogL_ppsh"
    PA_MovementAnims(3)="stand_jogR_ppsh"
    PA_MovementAnims(4)="stand_jogFL_ppsh"
    PA_MovementAnims(5)="stand_jogFR_ppsh"
    PA_MovementAnims(6)="stand_jogBL_ppsh"
    PA_MovementAnims(7)="stand_jogBR_ppsh"
    PA_CrouchAnims(0)="crouch_walkF_ppsh"
    PA_CrouchAnims(1)="crouch_walkB_ppsh"
    PA_CrouchAnims(2)="crouch_walkL_ppsh"
    PA_CrouchAnims(3)="crouch_walkR_ppsh"
    PA_CrouchAnims(4)="crouch_walkFL_ppsh"
    PA_CrouchAnims(5)="crouch_walkFR_ppsh"
    PA_CrouchAnims(6)="crouch_walkBL_ppsh"
    PA_CrouchAnims(7)="crouch_walkBR_ppsh"
    PA_ProneIronAnims(0)="prone_slowcrawlF_ppsh"
    PA_ProneIronAnims(1)="prone_slowcrawlB_ppsh"
    PA_ProneIronAnims(2)="prone_slowcrawlL_ppsh"
    PA_ProneIronAnims(3)="prone_slowcrawlR_ppsh"
    PA_ProneIronAnims(4)="prone_slowcrawlL_ppsh"
    PA_ProneIronAnims(5)="prone_slowcrawlR_ppsh"
    PA_ProneIronAnims(6)="prone_slowcrawlB_ppsh"
    PA_ProneIronAnims(7)="prone_slowcrawlB_ppsh"
    PA_WalkAnims(0)="stand_walkFhip_ppsh"
    PA_WalkAnims(1)="stand_walkBhip_ppsh"
    PA_WalkAnims(2)="stand_walkLhip_ppsh"
    PA_WalkAnims(3)="stand_walkRhip_ppsh"
    PA_WalkAnims(4)="stand_walkFLhip_ppsh"
    PA_WalkAnims(5)="stand_walkFRhip_ppsh"
    PA_WalkAnims(6)="stand_walkBLhip_ppsh"
    PA_WalkAnims(7)="stand_walkBRhip_ppsh"
    PA_WalkIronAnims(0)="stand_walkFiron_ppsh"
    PA_WalkIronAnims(1)="stand_walkBiron_ppsh"
    PA_WalkIronAnims(2)="stand_walkLiron_ppsh"
    PA_WalkIronAnims(3)="stand_walkRiron_ppsh"
    PA_WalkIronAnims(4)="stand_walkFLiron_ppsh"
    PA_WalkIronAnims(5)="stand_walkFRiron_ppsh"
    PA_WalkIronAnims(6)="stand_walkBLiron_ppsh"
    PA_WalkIronAnims(7)="stand_walkBRiron_ppsh"
    PA_SprintAnims(0)="stand_sprintF_ppsh"
    PA_SprintAnims(1)="stand_sprintB_ppsh"
    PA_SprintAnims(2)="stand_sprintL_ppsh"
    PA_SprintAnims(3)="stand_sprintR_ppsh"
    PA_SprintAnims(4)="stand_sprintFL_ppsh"
    PA_SprintAnims(5)="stand_sprintFR_ppsh"
    PA_SprintAnims(6)="stand_sprintBL_ppsh"
    PA_SprintAnims(7)="stand_sprintBR_ppsh"
    PA_SprintCrouchAnims(0)="crouch_sprintF_ppsh"
    PA_SprintCrouchAnims(1)="crouch_sprintB_ppsh"
    PA_SprintCrouchAnims(2)="crouch_sprintL_ppsh"
    PA_SprintCrouchAnims(3)="crouch_sprintR_ppsh"
    PA_SprintCrouchAnims(4)="crouch_sprintFL_ppsh"
    PA_SprintCrouchAnims(5)="crouch_sprintFR_ppsh"
    PA_SprintCrouchAnims(6)="crouch_sprintBL_ppsh"
    PA_SprintCrouchAnims(7)="crouch_sprintBR_ppsh"
    PA_TurnRightAnim="stand_turnRhip_ppsh"
    PA_TurnLeftAnim="stand_turnLhip_ppsh"
    PA_TurnIronRightAnim="stand_turnRiron_ppsh"
    PA_TurnIronLeftAnim="stand_turnLiron_ppsh"
    PA_CrouchTurnIronRightAnim="crouch_turnRiron_pps43"
    PA_CrouchTurnIronLeftAnim="crouch_turnRiron_pps43"
    PA_ProneTurnRightAnim="prone_turnR_ppsh"
    PA_ProneTurnLeftAnim="prone_turnL_ppsh"
    PA_StandToProneAnim="StandtoProne_ppsh"
    PA_CrouchToProneAnim="CrouchtoProne_ppsh"
    PA_ProneToStandAnim="PronetoStand_ppsh"
    PA_ProneToCrouchAnim="PronetoCrouch_ppsh"
    PA_DiveToProneStartAnim="prone_diveF_kar"
    PA_DiveToProneEndAnim="prone_diveend_kar"
    PA_CrouchTurnRightAnim="crouch_turnR_ppsh"
    PA_CrouchTurnLeftAnim="crouch_turnL_ppsh"
    PA_CrouchIdleRestAnim="crouch_idle_ppsh"
    PA_IdleCrouchAnim="crouch_idle_ppsh"
    PA_IdleRestAnim="stand_idlehip_ppsh"
    PA_IdleWeaponAnim="stand_idlehip_ppsh"
    PA_IdleIronRestAnim="stand_idleiron_ppsh"
    PA_IdleIronWeaponAnim="stand_idleiron_ppsh"
    PA_IdleCrouchIronWeaponAnim="crouch_idleiron_ppsh"
    PA_IdleProneAnim="prone_idle_ppsh"
    PA_ReloadAnim="stand_reloadhalf_ppsh"
    PA_ProneReloadAnim="prone_reloadhalf_ppsh"
    PA_ReloadEmptyAnim="stand_reloadempty_ppsh"
    PA_ProneReloadEmptyAnim="prone_reloadempty_ppsh"
    PA_ProneIdleRestAnim="prone_idle_ppsh"
    PA_Fire="stand_shoothip_ppsh"
    PA_IronFire="stand_shootiron_ppsh"
    PA_CrouchFire="crouch_shoot_ppsh"
    PA_CrouchIronFire="crouch_shootiron_ppsh"
    PA_ProneFire="prone_shoot_ppsh"
    PA_MoveStandFire(0)="stand_shootFhip_ppsh"
    PA_MoveStandFire(1)="stand_shootFhip_ppsh"
    PA_MoveStandFire(2)="stand_shootLRhip_ppsh"
    PA_MoveStandFire(3)="stand_shootLRhip_ppsh"
    PA_MoveStandFire(4)="stand_shootFLhip_ppsh"
    PA_MoveStandFire(5)="stand_shootFRhip_ppsh"
    PA_MoveStandFire(6)="stand_shootFRhip_ppsh"
    PA_MoveStandFire(7)="stand_shootFLhip_ppsh"
    PA_MoveCrouchFire(0)="crouch_shootF_ppsh"
    PA_MoveCrouchFire(1)="crouch_shootF_ppsh"
    PA_MoveCrouchFire(2)="crouch_shootLR_ppsh"
    PA_MoveCrouchFire(3)="crouch_shootLR_ppsh"
    PA_MoveCrouchFire(4)="crouch_shootF_ppsh"
    PA_MoveCrouchFire(5)="crouch_shootF_ppsh"
    PA_MoveCrouchFire(6)="crouch_shootF_ppsh"
    PA_MoveCrouchFire(7)="crouch_shootF_ppsh"
    PA_MoveWalkFire(0)="stand_shootFwalk_ppsh"
    PA_MoveWalkFire(1)="stand_shootFwalk_ppsh"
    PA_MoveWalkFire(2)="stand_shootLRwalk_ppsh"
    PA_MoveWalkFire(3)="stand_shootLRwalk_ppsh"
    PA_MoveWalkFire(4)="stand_shootFLwalk_ppsh"
    PA_MoveWalkFire(5)="stand_shootFRwalk_ppsh"
    PA_MoveWalkFire(6)="stand_shootFRwalk_ppsh"
    PA_MoveWalkFire(7)="stand_shootFLwalk_ppsh"
    PA_MoveStandIronFire(0)="stand_shootiron_ppsh"
    PA_MoveStandIronFire(1)="stand_shootiron_ppsh"
    PA_MoveStandIronFire(2)="stand_shootLRiron_ppsh"
    PA_MoveStandIronFire(3)="stand_shootLRiron_ppsh"
    PA_MoveStandIronFire(4)="stand_shootFLiron_ppsh"
    PA_MoveStandIronFire(5)="stand_shootFRiron_ppsh"
    PA_MoveStandIronFire(6)="stand_shootFRiron_ppsh"
    PA_MoveStandIronFire(7)="stand_shootFLiron_ppsh"
    PA_AltFire="stand_idlestrike_kar"
    PA_CrouchAltFire="stand_idlestrike_kar"
    PA_ProneAltFire="prone_idlestrike_bayo"
    PA_FireLastShot="stand_shoothip_ppsh"
    PA_IronFireLastShot="stand_shootiron_ppsh"
    PA_CrouchFireLastShot="crouch_shoot_ppsh"
    PA_ProneFireLastShot="prone_shoot_ppsh"
    PA_AirStillAnim="jump_mid_ppsh"
    PA_AirAnims(0)="jumpF_mid_ppsh"
    PA_AirAnims(1)="jumpB_mid_ppsh"
    PA_AirAnims(2)="jumpL_mid_ppsh"
    PA_AirAnims(3)="jumpR_mid_ppsh"
    PA_TakeoffStillAnim="jump_takeoff_ppsh"
    PA_TakeoffAnims(0)="jumpF_takeoff_ppsh"
    PA_TakeoffAnims(1)="jumpB_takeoff_ppsh"
    PA_TakeoffAnims(2)="jumpL_takeoff_ppsh"
    PA_TakeoffAnims(3)="jumpR_takeoff_ppsh"
    PA_LandAnims(0)="jumpF_land_ppsh"
    PA_LandAnims(1)="jumpB_land_ppsh"
    PA_LandAnims(2)="jumpL_land_ppsh"
    PA_LandAnims(3)="jumpR_land_ppsh"
    PA_DodgeAnims(0)="jumpF_mid_ppsh"
    PA_DodgeAnims(1)="jumpB_mid_ppsh"
    PA_DodgeAnims(2)="jumpL_mid_ppsh"
    PA_DodgeAnims(3)="jumpR_mid_ppsh"
}
