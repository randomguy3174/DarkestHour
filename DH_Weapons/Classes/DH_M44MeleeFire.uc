//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2022
//==============================================================================

class DH_M44MeleeFire extends DHMeleeFire;

defaultproperties
{
    BayonetDamageType=class'DH_Weapons.DH_M44BayonetDamType'
    BayoBackAnim="stab_pullback"
    BayoHoldAnim="stab_hold"
    BayoStabAnim="stab_attack"
    BayoFinishAnim="stab_return"
    BashBackAnim="" // bayonet is permanently attached so there are no bash anims
    BashHoldAnim=""
    BashAnim=""
    BashFinishAnim=""
}
