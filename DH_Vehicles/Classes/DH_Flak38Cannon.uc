//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2021
//==============================================================================

class DH_Flak38Cannon extends DHVehicleAutoCannon;

var     name        SightBone;
var     name        TraverseWheelBone;
var     name        ElevationWheelBone;

// New function to update sight & aiming wheel rotation, called by cannon pawn when gun moves
simulated function UpdateSightAndWheelRotation()
{
    local rotator SightRotation, ElevationWheelRotation, TraverseWheelRotation;

    SightRotation.Pitch = -CurrentAim.Pitch;
    SetBoneRotation(SightBone, SightRotation);

    ElevationWheelRotation.Pitch = -CurrentAim.Pitch * 32;
    SetBoneRotation(ElevationWheelBone, ElevationWheelRotation);

    TraverseWheelRotation.Yaw = -CurrentAim.Yaw * 32;
    SetBoneRotation(TraverseWheelBone, TraverseWheelRotation);
}

defaultproperties
{
    // Cannon mesh
    Mesh=SkeletalMesh'DH_Flak38_anm.Flak38_turret'
    Skins(0)=Texture'DH_Artillery_tex.Flak38.Flak38_gun'
    CollisionStaticMesh=StaticMesh'DH_Artillery_stc.Flak38.Flak38_turret_coll'
    GunnerAttachmentBone="Turret" // gunner doesn't move so we don't need a dedicated attachment bone

    // Turret movement
    RotationsPerSecond=0.05
    PitchUpLimit=16384
    CustomPitchUpLimit=15474
    CustomPitchDownLimit=64800

    // Cannon ammo
    ProjectileClass=class'DH_Engine.DHCannonShell_MixedMag'
    PrimaryProjectileClass=class'DH_Engine.DHCannonShell_MixedMag'
    SecondaryProjectileClass=class'DH_Vehicles.DH_Flak38CannonShellAP'
    TertiaryProjectileClass=class'DH_Vehicles.DH_Flak38CannonShellHE'

    ProjectileDescriptions(0)="Mixed"
    ProjectileDescriptions(1)="AP"
    ProjectileDescriptions(2)="HE-T"

    nProjectileDescriptions(0)="PzGr.+Sprgr.39"
    nProjectileDescriptions(1)="PzGr."
    nProjectileDescriptions(2)="Sprgr.39"

    NumPrimaryMags=12
    NumSecondaryMags=4
    NumTertiaryMags=4
    InitialPrimaryAmmo=20
    InitialSecondaryAmmo=20
    InitialTertiaryAmmo=20

    // Weapon fire
    FireInterval=0.2
    WeaponFireOffset=5.0
    AddedPitch=35 // tricky one as has no range settings & AddedPitch varies widely between ranges (35/44/32/17/-5 for 500/800/1000/1200/1500m) - this global adjustment works well up to 1000m
    ShellCaseEmitterClass=class'DH_Effects.DH_20mmShellCaseEmitter'
    ShellCaseEjectorBone="Gun"

    // Animations
    BeginningIdleAnim="optic_idle"
    ShootLoweredAnim="shoot_optic"
    ShootIntermediateAnim="shoot_opensight"
    ShootRaisedAnim="shoot_lookover"
    SightBone="Sight_arm"
    TraverseWheelBone="Traverse_wheel"
    ElevationWheelBone="Elevation_wheel"

    // Penetration (no defense against any AT weaponry)
    FrontArmorFactor=0.0
    RearArmorFactor=0.0
    LeftArmorFactor=0.0
    RightArmorFactor=0.0
}
