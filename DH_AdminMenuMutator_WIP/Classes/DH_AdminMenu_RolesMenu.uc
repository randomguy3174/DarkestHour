//=============================================================================
// DH_AdminMenu_RolesMenu - by Matt UK
//=============================================================================
//
// Displays a list of player roles when switching a player to a new role
//
//=============================================================================
class DH_AdminMenu_RolesMenu extends DH_AdminMenu_MenuBase;


var  array<string>  AlliesRoleNames, AxisRoleNames; // arrays of role names for each team, built from either DH or RO role arrays


exec function RolesMenu(string Team, string Action, string PlayerName)
{
    if (!bInitialVariablesSet)
    {
        bInitialVariablesSet = true;
        GetAllRoleNames();
    }

    if (PlayerName != "")
    {
        if (Team ~= "Axis")
        {
            MenuText = AxisRoleNames;
        }
        else if (Team ~= "Allies")
        {
            MenuText = AlliesRoleNames;
        }
        else
        {
            return; // neither team was specified so don't activate the menu
        }

        PreviousMenu = "PlayerActionsMenu" @ PlayerName; // means we will return to the actions menu for the selected player if we press the 'previous menu' key
        SelectionPrefix = Action @ PlayerName; // sets variable to be used in the generic HandleInput function, which avoids having to redefine it here
        GoToState('MenuVisible');
    }
}

function GetAllRoleNames()
{
    local  DHGameReplicationInfo    DHGRI;
    local  ROGameReplicationInfo    ROGRI;
    local  int                      i;

    DHGRI = DHGameReplicationInfo(PC.GameReplicationInfo);

    if (DHGRI != none)
    {
        for (i = 0; i < ArrayCount(DHGRI.DHAlliesRoles); i++)
        {
            if (DHGRI.DHAlliesRoles[i] != none)
                AlliesRoleNames[AlliesRoleNames.Length] = DHGRI.DHAlliesRoles[i].MyName;
        }

        for (i = 0; i < ArrayCount(DHGRI.DHAxisRoles); i++)
        {
            if (DHGRI.DHAxisRoles[i] != none)
                AxisRoleNames[AxisRoleNames.Length] = DHGRI.DHAxisRoles[i].MyName;
        }
    }
    else // this makes it work with Red Orchestra or any game class/mod that uses RO's AlliesRoles/AxisRoles
    {
        ROGRI = ROGameReplicationInfo(PC.GameReplicationInfo);

        if (ROGRI != none)
        {
            for (i = 0; i < ArrayCount(ROGRI.AlliesRoles); i++)
            {
                if (ROGRI.AlliesRoles[i] != none)
                    AlliesRoleNames[AlliesRoleNames.Length] = ROGRI.AlliesRoles[i].MyName;
            }

            for (i = 0; i < ArrayCount(ROGRI.AxisRoles); i++)
            {
                if (ROGRI.AxisRoles[i] != none)
                    AxisRoleNames[AxisRoleNames.Length] = ROGRI.AxisRoles[i].MyName;
            }
        }
    }
}

exec function SwitchPlayerToAlliesRole(string PlayerName, string RoleName, string RoleIndex)
{
    BuildMutateCommand("SwitchPlayer" @ PlayerName @ "ToAllies" @ RoleName @ RoleIndex, 5);
}

exec function SwitchPlayerToAxisRole(string PlayerName, string RoleName, string RoleIndex)
{
    BuildMutateCommand("SwitchPlayer" @ PlayerName @ "ToAxis" @ RoleName @ RoleIndex, 6);
}

defaultproperties
{
    MenuTitle="ROLE SELECTION MENU"
    bUseMenuTextAsMenuCommand=true
    bTreatSelectionAsOneWord=true
    bUseSelectionIndexAsSuffix=true
}
