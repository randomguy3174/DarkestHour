//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2022
//==============================================================================

class DH_AVT40Weapon extends DHAutoWeapon;

defaultproperties
{
    ItemName="AVT-40"
    SwayModifyFactor=0.72 // -0.08
    FireModeClass(0)=class'DH_Weapons.DH_AVT40Fire'
    FireModeClass(1)=class'DH_Weapons.DH_AVT40MeleeFire'
    AttachmentClass=class'DH_Weapons.DH_AVT40Attachment'
    PickupClass=class'DH_Weapons.DH_AVT40Pickup'

    Mesh=SkeletalMesh'DH_Svt40_1st.svt40_1st'
    Skins(2)=Texture'Weapons1st_tex.Rifles.svt40_sniper'
    HighDetailOverlay=Shader'Weapons1st_tex.Rifles.svt40_sniper_s'
    bUseHighDetailOverlayIndex=true
    HighDetailOverlayIndex=2

    IronSightDisplayFOV=48.0
    DisplayFOV=90.0

    MaxNumPrimaryMags=9
    InitialNumPrimaryMags=9

    InitialBarrels=1
    BarrelClass=class'DH_Weapons.DH_AVT40Barrel'
    BarrelSteamBone="Muzzle"

    bHasSelectFire=true
    SelectFireAnim="fireswitch"
    SelectFireIronAnim="iron_fireswitch"
    SelectFireEmptyAnim="fireswitch_empty"
    SelectFireIronEmptyAnim="Iron_fireswitch_empty"

    MagEmptyReloadAnims(0)="reload_empty"
    MagEmptyReloadAnims(1)="reload_emptyB"
    MagEmptyReloadAnims(2)="reload_emptyC"
    MagPartialReloadAnims(0)="reload_half"
    MagPartialReloadAnims(1)="reload_halfB"
    MagPartialReloadAnims(2)="reload_halfC"

    bHasBayonet=true
    BayoAttachAnim="Bayonet_on"
    BayoDetachAnim="Bayonet_off"
    BayoAttachEmptyAnim="bayonet_on_empty"
    BayoDetachEmptyAnim="bayonet_off_empty"

    BayonetBoneName="bayonet"

    IdleEmptyAnim="idle_empty"
    IronIdleEmptyAnim="iron_idle_empty"
    IronBringUpEmpty="iron_in_empty"
    IronPutDownEmpty="iron_out_empty"
    SprintStartEmptyAnim="sprint_start_empty"
    SprintLoopEmptyAnim="sprint_middle_empty"
    SprintEndEmptyAnim="sprint_end_empty"

    CrawlForwardEmptyAnim="crawlF_empty"
    CrawlBackwardEmptyAnim="crawlB_empty"
    CrawlStartEmptyAnim="crawl_in_empty"
    CrawlEndEmptyAnim="crawl_out_empty"

    SelectEmptyAnim="draw_empty"
    PutDownEmptyAnim="put_away_empty"
}
