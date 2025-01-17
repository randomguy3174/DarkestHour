//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2022
//==============================================================================

class DH_30calAttachment extends DHHighROFWeaponAttachment;

defaultproperties
{
    Mesh=SkeletalMesh'DH_Weapons3rd_anm.30Cal_3rd'
    MenuImage=Texture'DH_InterfaceArt_tex.weapon_icons.30cal_icon'
    mMuzFlashClass=class'ROEffects.MuzzleFlash3rdMG'
    ROShellCaseClass=class'ROAmmo.RO3rdShellEject762x54mm'
    MuzzleBoneName="Muzzle"
    ShellEjectionBoneName="ejector"
    bBarrelCanOverheat=true

    ClientProjectileClass=class'DH_Weapons.DH_30calBullet'
    bUsesTracers=true
    TracerFrequency=5
    ClientTracerClass=class'DH_Weapons.DH_30calTracerBullet'

    WA_Idle="idle_30cal"
    WA_IdleEmpty="idle_30cal"
    WA_Fire="shoot_30cal"
    WA_Reload="reload_30cal"
    WA_ReloadEmpty="reload_30cal"
    WA_ProneReload="prone_reload_30cal"
    WA_ProneReloadEmpty="prone_reload_30cal"

    PA_MovementAnims(0)="stand_jogF_dp27"
    PA_MovementAnims(1)="stand_jogB_dp27"
    PA_MovementAnims(2)="stand_jogL_dp27"
    PA_MovementAnims(3)="stand_jogR_dp27"
    PA_MovementAnims(4)="stand_jogFL_dp27"
    PA_MovementAnims(5)="stand_jogFR_dp27"
    PA_MovementAnims(6)="stand_jogBL_dp27"
    PA_MovementAnims(7)="stand_jogBR_dp27"
    PA_CrouchAnims(0)="crouch_walkF_dp27"
    PA_CrouchAnims(1)="crouch_walkB_dp27"
    PA_CrouchAnims(2)="crouch_walkL_dp27"
    PA_CrouchAnims(3)="crouch_walkR_dp27"
    PA_CrouchAnims(4)="crouch_walkFL_dp27"
    PA_CrouchAnims(5)="crouch_walkFR_dp27"
    PA_CrouchAnims(6)="crouch_walkBL_dp27"
    PA_CrouchAnims(7)="crouch_walkBR_dp27"
    PA_ProneIronAnims(0)="prone_slowcrawlF_mp40"
    PA_ProneIronAnims(1)="prone_slowcrawlB_mp40"
    PA_ProneIronAnims(2)="prone_slowcrawlL_mp40"
    PA_ProneIronAnims(3)="prone_slowcrawlR_mp40"
    PA_ProneIronAnims(4)="prone_slowcrawlL_mp40"
    PA_ProneIronAnims(5)="prone_slowcrawlR_mp40"
    PA_ProneIronAnims(6)="prone_slowcrawlB_mp40"
    PA_ProneIronAnims(7)="prone_slowcrawlB_mp40"
    PA_WalkAnims(0)="stand_walkFhip_dp27"
    PA_WalkAnims(1)="stand_walkBhip_dp27"
    PA_WalkAnims(2)="stand_walkLhip_dp27"
    PA_WalkAnims(3)="stand_walkRhip_dp27"
    PA_WalkAnims(4)="stand_walkFLhip_dp27"
    PA_WalkAnims(5)="stand_walkFRhip_dp27"
    PA_WalkAnims(6)="stand_walkBLhip_dp27"
    PA_WalkAnims(7)="stand_walkBRhip_dp27"
    PA_WalkIronAnims(0)="stand_walkFiron_mp40"
    PA_WalkIronAnims(1)="stand_walkBiron_mp40"
    PA_WalkIronAnims(2)="stand_walkLiron_mp40"
    PA_WalkIronAnims(3)="stand_walkRiron_mp40"
    PA_WalkIronAnims(4)="stand_walkFLiron_mp40"
    PA_WalkIronAnims(5)="stand_walkFRiron_mp40"
    PA_WalkIronAnims(6)="stand_walkBLiron_mp40"
    PA_WalkIronAnims(7)="stand_walkBRiron_mp40"
    PA_SprintAnims(0)="stand_sprintF_faust"
    PA_SprintAnims(1)="stand_sprintB_faust"
    PA_SprintAnims(2)="stand_sprintL_faust"
    PA_SprintAnims(3)="stand_sprintR_faust"
    PA_SprintAnims(4)="stand_sprintFL_faust"
    PA_SprintAnims(5)="stand_sprintFR_faust"
    PA_SprintAnims(6)="stand_sprintBL_faust"
    PA_SprintAnims(7)="stand_sprintBR_faust"
    PA_SprintCrouchAnims(0)="crouch_sprintF_dp27"
    PA_SprintCrouchAnims(1)="crouch_sprintB_dp27"
    PA_SprintCrouchAnims(2)="crouch_sprintL_dp27"
    PA_SprintCrouchAnims(3)="crouch_sprintR_dp27"
    PA_SprintCrouchAnims(4)="crouch_sprintFL_dp27"
    PA_SprintCrouchAnims(5)="crouch_sprintFR_dp27"
    PA_SprintCrouchAnims(6)="crouch_sprintBL_dp27"
    PA_SprintCrouchAnims(7)="crouch_sprintBR_dp27"
    PA_TurnRightAnim="stand_turnR_mg42"
    PA_TurnLeftAnim="stand_turnL_mg42"
    PA_TurnIronRightAnim="stand_turnRiron_faust"
    PA_TurnIronLeftAnim="stand_turnLiron_faust"
    PA_CrouchTurnIronRightAnim="crouch_turnRiron_faust"
    PA_CrouchTurnIronLeftAnim="crouch_turnRiron_faust"
    PA_ProneTurnRightAnim="prone_turnR_dp27"
    PA_ProneTurnLeftAnim="prone_turnL_dp27"
    PA_StandToProneAnim="StandtoProne_dp27"
    PA_CrouchToProneAnim="CrouchtoProne_dp27"
    PA_ProneToStandAnim="PronetoStand_dp27"
    PA_ProneToCrouchAnim="PronetoCrouch_faust"
    PA_DiveToProneStartAnim="prone_diveF_kar"
    PA_DiveToProneEndAnim="prone_diveend_kar"
    PA_CrouchTurnRightAnim="crouch_turnR_faust"
    PA_CrouchTurnLeftAnim="crouch_turnL_faust"
    PA_CrouchIdleRestAnim="crouch_idle_faust"
    PA_IdleCrouchAnim="crouch_idle_faust"
    PA_IdleRestAnim="stand_idlehip_faust"
    PA_IdleWeaponAnim="stand_idlehip_faust"
    PA_IdleIronRestAnim="stand_idleiron_dp27"
    PA_IdleIronWeaponAnim="stand_idleiron_dp27"
    PA_IdleCrouchIronWeaponAnim="crouch_idleiron_dp27"
    PA_IdleProneAnim="prone_idle_dp27"
    PA_IdleDeployedAnim="stand_idleiron_dp27"
    PA_IdleDeployedProneAnim="prone_idle_dp27"
    PA_IdleDeployedCrouchAnim="crouch_idleiron_dp27"
    PA_ReloadAnim="stand_reloadempty_dp27"
    PA_ProneReloadAnim="prone_reloadempty_dp27"
    PA_ReloadEmptyAnim="stand_reloadempty_dp27"
    PA_ProneReloadEmptyAnim="prone_reloadempty_dp27"
    PA_ProneIdleRestAnim="prone_idle_dp27"
    PA_StandWeaponDeployAnim="stand_idleiron_dp27"
    PA_ProneWeaponDeployAnim="prone_idle_dp27"
    PA_StandWeaponUnDeployAnim="stand_idlehip_dp27"
    PA_ProneWeaponUnDeployAnim="prone_idle_dp27"
    PA_Fire="stand_shoothip_dp27"
    PA_IronFire="stand_shootiron_dp27"
    PA_CrouchFire="crouch_shootiron_dp27"
    PA_ProneFire="prone_shoot_dp27"
    PA_DeployedFire="stand_shootiron_dp27"
    PA_CrouchDeployedFire="crouch_shootiron_dp27"
    PA_ProneDeployedFire="prone_shoot_dp27"
    PA_MoveStandFire(0)="stand_shootFhip_dp27"
    PA_MoveStandFire(1)="stand_shootFhip_dp27"
    PA_MoveStandFire(2)="stand_shootLRhip_dp27"
    PA_MoveStandFire(3)="stand_shootLRhip_dp27"
    PA_MoveStandFire(4)="stand_shootFLhip_dp27"
    PA_MoveStandFire(5)="stand_shootFRhip_dp27"
    PA_MoveStandFire(6)="stand_shootFRhip_dp27"
    PA_MoveStandFire(7)="stand_shootFLhip_dp27"
    PA_MoveCrouchFire(0)="crouch_shootF_dp27"
    PA_MoveCrouchFire(1)="crouch_shootF_dp27"
    PA_MoveCrouchFire(2)="crouch_shootLR_dp27"
    PA_MoveCrouchFire(3)="crouch_shootLR_dp27"
    PA_MoveCrouchFire(4)="crouch_shootF_dp27"
    PA_MoveCrouchFire(5)="crouch_shootF_dp27"
    PA_MoveCrouchFire(6)="crouch_shootF_dp27"
    PA_MoveCrouchFire(7)="crouch_shootF_dp27"
    PA_MoveWalkFire(0)="stand_shootFwalk_dp27"
    PA_MoveWalkFire(1)="stand_shootFwalk_dp27"
    PA_MoveWalkFire(2)="stand_shootLRwalk_dp27"
    PA_MoveWalkFire(3)="stand_shootLRwalk_dp27"
    PA_MoveWalkFire(4)="stand_shootFLwalk_dp27"
    PA_MoveWalkFire(5)="stand_shootFRwalk_dp27"
    PA_MoveWalkFire(6)="stand_shootFRwalk_dp27"
    PA_MoveWalkFire(7)="stand_shootFLwalk_dp27"
    PA_MoveStandIronFire(0)="stand_shootiron_dp27"
    PA_MoveStandIronFire(1)="stand_shootiron_dp27"
    PA_MoveStandIronFire(2)="stand_shootLRiron_dp27"
    PA_MoveStandIronFire(3)="stand_shootLRiron_dp27"
    PA_MoveStandIronFire(4)="stand_shootFLiron_dp27"
    PA_MoveStandIronFire(5)="stand_shootFRiron_dp27"
    PA_MoveStandIronFire(6)="stand_shootFRiron_dp27"
    PA_MoveStandIronFire(7)="stand_shootFLiron_dp27"
    PA_AltFire="single_iron_dp27"
    PA_CrouchAltFire="crouch_single_dp27"
    PA_ProneAltFire="prone_single_dp27"
    PA_FireLastShot="stand_shoothip_dp27"
    PA_IronFireLastShot="stand_shootiron_dp27"
    PA_CrouchFireLastShot="crouch_shoot_dp27"
    PA_ProneFireLastShot="prone_shoot_dp27"
}
