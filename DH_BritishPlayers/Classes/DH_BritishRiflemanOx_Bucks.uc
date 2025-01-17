//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2022
//==============================================================================

class DH_BritishRiflemanOx_Bucks extends DHCWRiflemanRoles;

defaultproperties
{
    RolePawns(0)=(PawnClass=class'DH_BritishPlayers.DH_BritishAirbornePawn',Weight=1.0)
    SleeveTexture=Texture'DHBritishCharactersTex.Sleeves.Brit_Para_sleeves'
    Headgear(0)=class'DH_BritishPlayers.DH_BritishParaHelmetOne'
    Headgear(1)=class'DH_BritishPlayers.DH_BritishParaHelmetTwo'
    Headgear(2)=class'DH_BritishPlayers.DH_BritishParaHelmetOne'

    SecondaryWeapons(0)=(Item=class'DH_Weapons.DH_EnfieldNo2Weapon')
}
