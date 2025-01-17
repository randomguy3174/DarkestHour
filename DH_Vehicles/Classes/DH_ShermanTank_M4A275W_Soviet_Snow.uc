//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2022
//==============================================================================

class DH_ShermanTank_M4A275W_Soviet_Snow extends DH_ShermanTank_M4A275W_Soviet;

defaultproperties
{
    //textures are reused from american version because soviets used the same white stars sometimes and on winter skin there doesnt seem to be any unit specific markings (normal soviet skin is different)
    bIsWinterVariant=true
    Skins(0)=Texture'DH_VehiclesUS_tex2.ext_vehicles.ShermanM4A3_ext_snow'
    Skins(1)=Texture'DH_VehiclesUS_tex2.ext_vehicles.ShermanM4A3E2_wheels_snow'
    Skins(4)=Texture'DH_VehiclesUS_tex2.Treads.Sherman_treadsnow'
    Skins(5)=Texture'DH_VehiclesUS_tex2.Treads.Sherman_treadsnow'
    // TODO: make whitewash texture for 75mm turret - this uses a snow-topped texture, which doesn't match when used on the M4A3 whitewashed hull (incl DestroyedMeshSkins 0)
    CannonSkins(0)=Texture'DH_VehiclesUS_tex2.ext_vehicles.Sherman_body_snow'
    DestroyedMeshSkins(0)=Combiner'DH_VehiclesUS_tex2.Destroyed.ShermanM4A375_turret_snow_dest'
    DestroyedMeshSkins(1)=Combiner'DH_VehiclesUS_tex2.Destroyed.ShermanM4A3_ext_snow_dest'
    DestroyedMeshSkins(2)=Combiner'DH_VehiclesUS_tex2.Destroyed.ShermanM4A3E2_wheels_snowdest'
}
