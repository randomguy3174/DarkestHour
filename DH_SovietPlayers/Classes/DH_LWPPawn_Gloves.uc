//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2022
//==============================================================================

class DH_LWPPawn_Gloves extends DH_PolishPawn;

// some faces here are substituted with others because they looked too distinct for a generic bloody texture,
// which is now used to fix the weird invisible head bug due to buggy combiners in this game engine

defaultproperties
{
    Mesh=SkeletalMesh'DHCharactersSOV_anm.DH_rus_rifleman_tunic'
    Skins(0)=Texture'DHSovietCharactersTex.RussianTunics.DH_LWP_wz43_tunic'
    Skins(1)=Texture'Characters_tex.rus_heads.rus_face04'

    FaceSkins(0)=Combiner'DHSovietCharactersTex.sov_faces.sov_face02gloves' //
    FaceSkins(1)=Combiner'DHSovietCharactersTex.sov_faces.sov_face02gloves'
    FaceSkins(2)=Combiner'DHSovietCharactersTex.sov_faces.sov_face03gloves'
    FaceSkins(3)=Combiner'DHSovietCharactersTex.sov_faces.sov_face04gloves'
    FaceSkins(4)=Combiner'DHSovietCharactersTex.sov_faces.sov_face05gloves'
    FaceSkins(5)=Combiner'DHSovietCharactersTex.sov_faces.sov_face07gloves' //
    FaceSkins(6)=Combiner'DHSovietCharactersTex.sov_faces.sov_face07gloves'
    FaceSkins(7)=Combiner'DHSovietCharactersTex.sov_faces.sov_face09gloves' //
    FaceSkins(8)=Combiner'DHSovietCharactersTex.sov_faces.sov_face09gloves'
    FaceSkins(9)=Combiner'DHSovietCharactersTex.sov_faces.sov_face10gloves'
    FaceSkins(10)=Combiner'DHSovietCharactersTex.sov_faces.sov_face11gloves'
    FaceSkins(11)=Combiner'DHSovietCharactersTex.sov_faces.sov_face12gloves'
    FaceSkins(12)=Combiner'DHSovietCharactersTex.sov_faces.sov_face14gloves' //
    FaceSkins(13)=Combiner'DHSovietCharactersTex.sov_faces.sov_face14gloves'
    FaceSkins(14)=Combiner'DHSovietCharactersTex.sov_faces.sov_face15gloves'

    ShovelClassName="DH_Equipment.DHShovelItem_Russian"
    BinocsClassName="DH_Equipment.DHBinocularsItemSoviet"
}
