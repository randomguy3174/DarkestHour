//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2022
//==============================================================================

class DH_ColtM1911Pickup extends DHWeaponPickup;

defaultproperties
{
    InventoryType=class'DH_Weapons.DH_ColtM1911Weapon'
    StaticMesh=StaticMesh'DH_WeaponPickups.Weapons.Colt45'
    CollisionRadius=15.0 // as is a pistol, which is small
}
