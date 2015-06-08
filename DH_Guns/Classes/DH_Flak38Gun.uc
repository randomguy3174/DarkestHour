//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2015
//==============================================================================

class DH_Flak38Gun extends DHATGun;

#exec OBJ LOAD FILE=..\StaticMeshes\DH_Artillery_stc.usx
#exec OBJ LOAD FILE=..\Animations\DH_Flak38_anm.ukx
#exec OBJ LOAD FILE=..\Textures\DH_Artillery_tex.utx

defaultproperties
{
    VehicleHudTurret=TexRotator'DH_Artillery_tex.ATGun_Hud.flakv38_turret_rot' // TODO: add one for Flak 38
    VehicleHudTurretLook=TexRotator'DH_Artillery_tex.ATGun_Hud.flakv38_turret_look' // TODO: add one for Flak 38
    PassengerWeapons(0)=(WeaponPawnClass=class'DH_Guns.DH_Flak38CannonPawn',WeaponBone="turret_placement")
    DestroyedVehicleMesh=StaticMesh'DH_Artillery_stc.flakvierling.Flakvierling38_dest' // TODO: add one for Flak 38
    DestructionEffectClass=class'AHZ_ROVehicles.ATCannonDestroyedEmitter'
    DisintegrationEffectClass=class'AHZ_ROVehicles.ATCannonDestroyedEmitter'
    DamagedEffectClass=none
    DamagedEffectHealthSmokeFactor=0.0
    DamagedEffectHealthMediumSmokeFactor=0.0
    DamagedEffectHealthHeavySmokeFactor=0.0
    VehicleHudImage=texture'DH_Artillery_tex.ATGun_Hud.flakv38_base' // TODO: add one for Flak 38 (perhaps only for wheeled version; flakvierling might be ok for static base Flak 38)
    VehicleHudOccupantsX(0)=0.0
    VehicleHudOccupantsX(1)=0.0
    VehicleNameString="Flak 38"
    Mesh=SkeletalMesh'DH_Flak38_anm.Flak38_base_trailer'
    Skins(0)=texture'DH_Artillery_tex.Flak38.Flak38_gun'
    Skins(1)=texture'DH_Artillery_tex.Flak38.Flak38_trailer'
}
