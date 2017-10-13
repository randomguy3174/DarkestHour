//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2017
//==============================================================================

class DH_BrenFire extends DHAutomaticFire;

var     name    BipodDeployFireAnim;
var     name    BipodDeployFireLoopAnim;
var     name    BipodDeployFireEndAnim;

// Modified to handle bipod deployed firing animations
function PlayFiring()
{
    if (Weapon.Mesh != none)
    {
        if (FireCount > 0)
        {
            if ((Weapon.bUsingSights || Instigator.bBipodDeployed) && Weapon.HasAnim(FireIronLoopAnim))
            {
                if (Instigator.bBipodDeployed && Weapon.HasAnim(BipodDeployFireLoopAnim))
                {
                    Weapon.PlayAnim(BipodDeployFireLoopAnim, FireAnimRate, 0.0);
                }
                else
                {
                    Weapon.PlayAnim(FireIronLoopAnim, FireAnimRate, 0.0);
                }
            }
            else
            {
                if (Weapon.HasAnim(FireLoopAnim))
                {
                    Weapon.PlayAnim(FireLoopAnim, FireLoopAnimRate, 0.0);
                }
                else if (Weapon.HasAnim(FireAnim))
                {
                    Weapon.PlayAnim(FireAnim, FireAnimRate, FireTweenTime);
                }
            }
        }
        else
        {
            if (Weapon.bUsingSights || Instigator.bBipodDeployed)
            {
                if (Instigator.bBipodDeployed && Weapon.HasAnim(BipodDeployFireAnim))
                {
                    Weapon.PlayAnim(BipodDeployFireAnim, FireAnimRate, FireTweenTime);
                }
                else if (Weapon.HasAnim(FireIronAnim))
                {
                    Weapon.PlayAnim(FireIronAnim, FireAnimRate, FireTweenTime);
                }
            }
            else if (Weapon.HasAnim(FireAnim))
            {
                Weapon.PlayAnim(FireAnim, FireAnimRate, FireTweenTime);
            }
        }
    }

    if (FireSounds.Length > 0)
    {
        Weapon.PlayOwnedSound(FireSounds[Rand(FireSounds.Length)], SLOT_None, FireVolume,,,, false);
    }

    ClientPlayForceFeedback(FireForce);

    FireCount++;
}

// Modified to handle bipod deployed fire end animation
function PlayFireEnd()
{
    if ((Weapon.bUsingSights || Instigator.bBipodDeployed) && Weapon.HasAnim(FireIronEndAnim))
    {
        if (Instigator.bBipodDeployed && Weapon.HasAnim(BipodDeployFireEndAnim))
        {
            Weapon.PlayAnim(BipodDeployFireEndAnim, FireEndAnimRate, FireTweenTime);
        }
        else
        {
            Weapon.PlayAnim(FireIronEndAnim, FireEndAnimRate, FireTweenTime);
        }
    }
    else if (Weapon.HasAnim(FireEndAnim))
    {
        Weapon.PlayAnim(FireEndAnim, FireEndAnimRate, FireTweenTime);
    }
}

defaultproperties
{
    ProjectileClass=class'DH_Weapons.DH_BrenBullet'
    TracerProjectileClass=class'DH_Weapons.DH_BrenTracerBullet'
    bUsesTracers=true
    TracerFrequency=5
    AmmoClass=class'DH_Weapons.DH_BrenAmmo'
    FireRate=0.12
    FAProjSpawnOffset=(X=-28.0)

    Spread=125.0
    RecoilRate=0.075
    PctStandIronRecoil=0.8
    PctCrouchRecoil=0.65
    PctCrouchIronRecoil=0.45
    PctProneIronRecoil=0.25
    PctBipodDeployRecoil=0.01
    PctRestDeployRecoil=0.05
    MaxVerticalRecoilAngle=950

    FireSounds(0)=SoundGroup'DH_WeaponSounds.Bren.Bren_Fire01'
    ShellEjectClass=class'ROAmmo.ShellEject1st762x54mm'
    ShellIronSightOffset=(X=10.0,Y=0.0,Z=-5.0)
    ShellRotOffsetIron=(Pitch=-16200)
    bReverseShellSpawnDirection=true

    BipodDeployFireAnim="deploy_shoot_loop"
    BipodDeployFireLoopAnim="deploy_shoot_loop"
    BipodDeployFireEndAnim="deploy_shoot_end"

    ShakeRotMag=(X=50.0,Y=50.0,Z=175.0)
    ShakeRotTime=0.75
}
