//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2018
//==============================================================================

class DHAdminMenu_ServerMenu extends DHAdminMenu_MenuBase;

exec function ServerMenu()
{
    GotoState('MenuVisible');
}

exec function SetGamePassword()
{
    BuildMutateCommand("SetGamePassword ", 30);
}

defaultproperties
{
    MenuTitle="SERVER MENU (FOR VARIOUS SETTINGS)"
    PreviousMenu="Menu" // means we return to the player list menu if we press the 'previous menu' key

    MenuText(1)="Set Game Password (leave blank to remove password)"
    MenuCommand(1)="*SetGamePassword"
}
