//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2022
//==============================================================================

class DHUSVoice extends DHVoicePack;

defaultproperties
{
    SupportSound(0)=SoundGroup'DH_US_Voice_Infantry.requests.need_help'
    SupportSound(1)=SoundGroup'DH_US_Voice_Infantry.requests.need_help_at'
    SupportSound(2)=SoundGroup'DH_US_Voice_Infantry.requests.need_ammo'
    SupportSound(3)=SoundGroup'DH_US_Voice_Infantry.requests.need_sniper'
    SupportSound(4)=SoundGroup'DH_US_Voice_Infantry.requests.need_MG'
    SupportSound(5)=SoundGroup'DH_US_Voice_Infantry.requests.need_AT'
    SupportSound(6)=SoundGroup'DH_US_Voice_Infantry.requests.need_demolitions'
    SupportSound(7)=SoundGroup'DH_US_Voice_Infantry.requests.need_tank'
    SupportSound(8)=SoundGroup'DH_US_Voice_Infantry.requests.need_artillery'
    SupportSound(9)=SoundGroup'DH_US_Voice_Infantry.requests.need_transport'
    SupportString(5)="We need a Bazooka!"
    SupportAbbrev(5)="Need a Bazooka"
    EnemySound(0)=SoundGroup'DH_US_Voice_Infantry.spotted.infantry'
    EnemySound(1)=SoundGroup'DH_US_Voice_Infantry.spotted.MG'
    EnemySound(2)=SoundGroup'DH_US_Voice_Infantry.spotted.sniper'
    EnemySound(3)=SoundGroup'DH_US_Voice_Infantry.spotted.pioneer'
    EnemySound(4)=SoundGroup'DH_US_Voice_Infantry.spotted.AT_soldier'
    EnemySound(5)=SoundGroup'DH_US_Voice_Infantry.spotted.Vehicle'
    EnemySound(6)=SoundGroup'DH_US_Voice_Infantry.spotted.tank'
    EnemySound(7)=SoundGroup'DH_US_Voice_Infantry.spotted.heavy_tank'
    EnemySound(8)=SoundGroup'DH_US_Voice_Infantry.spotted.Artillery'
    AlertSound(0)=SoundGroup'DH_US_Voice_Infantry.alerts.Grenade'
    AlertSound(1)=SoundGroup'DH_US_Voice_Infantry.alerts.gogogo'
    AlertSound(2)=SoundGroup'DH_US_Voice_Infantry.alerts.take_cover'
    AlertSound(3)=SoundGroup'DH_US_Voice_Infantry.alerts.Stop'
    AlertSound(4)=SoundGroup'DH_US_Voice_Infantry.commander.follow_me'
    AlertSound(5)=SoundGroup'DH_US_Voice_Infantry.alerts.satchel_planted'
    AlertSound(6)=SoundGroup'DH_US_Voice_Infantry.alerts.covering_fire'
    AlertSound(7)=SoundGroup'DH_US_Voice_Infantry.alerts.friendly_fire'
    AlertSound(8)=SoundGroup'DH_US_Voice_Infantry.alerts.under_attack_at'
    AlertSound(9)=SoundGroup'DH_US_Voice_Infantry.commander.retreat'
    VehicleDirectionSound(0)=SoundGroup'DH_US_Voice_vehicle.directions.go_to_objective'
    VehicleDirectionSound(1)=SoundGroup'DH_US_Voice_vehicle.directions.forwards'
    VehicleDirectionSound(2)=SoundGroup'DH_US_Voice_vehicle.directions.Stop'
    VehicleDirectionSound(3)=SoundGroup'DH_US_Voice_vehicle.directions.Reverse'
    VehicleDirectionSound(4)=SoundGroup'DH_US_Voice_vehicle.directions.Left'
    VehicleDirectionSound(5)=SoundGroup'DH_US_Voice_vehicle.directions.Right'
    VehicleDirectionSound(6)=SoundGroup'DH_US_Voice_vehicle.directions.nudge_forward'
    VehicleDirectionSound(7)=SoundGroup'DH_US_Voice_vehicle.directions.nudge_back'
    VehicleDirectionSound(8)=SoundGroup'DH_US_Voice_vehicle.directions.nudge_left'
    VehicleDirectionSound(9)=SoundGroup'DH_US_Voice_vehicle.directions.nudge_right'
    VehicleAlertSound(0)=SoundGroup'DH_US_Voice_vehicle.alerts.enemy_forward'
    VehicleAlertSound(1)=SoundGroup'DH_US_Voice_vehicle.alerts.enemy_left'
    VehicleAlertSound(2)=SoundGroup'DH_US_Voice_vehicle.alerts.enemy_right'
    VehicleAlertSound(3)=SoundGroup'DH_US_Voice_vehicle.alerts.enemy_behind'
    VehicleAlertSound(4)=SoundGroup'DH_US_Voice_vehicle.alerts.enemy_infantry'
    VehicleAlertSound(5)=SoundGroup'DH_US_Voice_vehicle.alerts.yes'
    VehicleAlertSound(6)=SoundGroup'DH_US_Voice_vehicle.alerts.no'
    VehicleAlertSound(7)=SoundGroup'DH_US_Voice_vehicle.alerts.we_are_burning'
    VehicleAlertSound(8)=SoundGroup'DH_US_Voice_vehicle.alerts.get_out'
    VehicleAlertSound(9)=SoundGroup'DH_US_Voice_vehicle.alerts.Loaded'
    ExtraSound(0)=SoundGroup'DH_US_Voice_Infantry.insults.i_will_kill_you'
    ExtraSound(1)=SoundGroup'DH_US_Voice_Infantry.insults.no_retreat'
    ExtraSound(2)=SoundGroup'DH_US_Voice_Infantry.insults.insult'
    AckSound(0)=SoundGroup'DH_US_Voice_Infantry.responses.yes'
    AckSound(1)=SoundGroup'DH_US_Voice_Infantry.responses.no'
    AckSound(2)=SoundGroup'DH_US_Voice_Infantry.responses.thanks'
    AckSound(3)=SoundGroup'DH_US_Voice_Infantry.responses.sorry'
    OrderSound(0)=SoundGroup'DH_US_Voice_Infantry.commander.attack_objective'
    OrderSound(1)=SoundGroup'DH_US_Voice_Infantry.commander.defend_objective'
    OrderSound(2)=SoundGroup'DH_US_Voice_Infantry.commander.hold_this_position'
    OrderSound(3)=SoundGroup'DH_US_Voice_Infantry.commander.follow_me'
    OrderSound(4)=SoundGroup'DH_US_Voice_Infantry.commander.Attack'
    OrderSound(5)=SoundGroup'DH_US_Voice_Infantry.commander.retreat'
    OrderSound(6)=SoundGroup'DH_US_Voice_Infantry.commander.fire_at_will'
    OrderSound(7)=SoundGroup'DH_US_Voice_Infantry.commander.cease_fire'
    RadioRequestSound=SoundGroup'DH_ArtillerySounds.requests.USrequest'
    RadioResponseConfirmSound=SoundGroup'DH_US_Voice_Infantry.Artillery.confirm'
    RadioResponseDenySound=SoundGroup'DH_US_Voice_Infantry.Artillery.Deny'
}
