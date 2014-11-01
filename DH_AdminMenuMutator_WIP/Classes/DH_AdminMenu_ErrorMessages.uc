//============================================================================================================================
// DH_AdminMenu_ErrorMessages - by Matt UK
//============================================================================================================================
//
// Error messages generated by the mutator
// Implemented as a separate message class so message strings can be localised & different language versions could be produced
//
//============================================================================================================================
class DH_AdminMenu_ErrorMessages extends LocalMessage;


var  localized  string  MissingNameText;
var  localized  string  ErrorMessage[28];


static function string AssembleMessage(byte MessageNumber, optional string InsertedName)
{
    local string Text;

    // Exit if we don't have a message for the specified message number
    if (MessageNumber >= ArrayCount(default.ErrorMessage) || default.ErrorMessage[MessageNumber] == "")
    {
        return "";
    }

    // Insert a passed name, if it is part of the message
    if (InsertedName != "")
    {
        Text = Repl(default.ErrorMessage[MessageNumber], "%insert_name%", InsertedName);
    }
    else if (InStr(default.ErrorMessage[MessageNumber], "%insert_name%") != -1)
    {
        Text = Repl(default.ErrorMessage[MessageNumber], "%insert_name%", default.MissingNameText);
    }
    else
    {
        Text = default.ErrorMessage[MessageNumber];
    }

    return Text;
}

defaultproperties
{
    MissingNameText="<missing name>"

    // from the mutator:
    ErrorMessage(1)="You must be logged in as an admin (via the console) to use this function"
    ErrorMessage(2)="Paradropping a player isn't allowed on this server"    
    ErrorMessage(3)="The realism match mutator is not loaded on the server so you cannot use this option"

    ErrorMessage(4)="ERROR: no player name specified"
    ErrorMessage(5)="ERROR: could not find a player called '%insert_name%'"
    ErrorMessage(6)="PROBLEM: found more than one player with name '%insert_name%' so it is not safe to proceed with this action"
    ErrorMessage(7)="<ERROR: no player name>"
    ErrorMessage(8)="<ERROR: no admin name>"

    ErrorMessage(9)="Player '%insert_name%' is not currently active & so you cannot use this option"
    ErrorMessage(10)= "'%insert_name%' is already in that role"
    ErrorMessage(11)="Sorry, it's not possible to perform that action on a bot"

    ErrorMessage(12)="ERROR: no message specified"
    ErrorMessage(13)="ERROR: failed to kick '%insert_name%' (note that will not be able to kick a player who is logged in as an admin)"
    ErrorMessage(14)="ERROR: unable to kick any player as the necessary 'AccessControl' actor is not on the server (note that is normal in single player)"

    ErrorMessage(15)="There are no minefields in this level"
    ErrorMessage(16)="Minefields are already disabled"
    ErrorMessage(17)="Minefields are already enabled"

    ErrorMessage(18)="ERROR: no valid team name specified"
    ErrorMessage(19)="ERROR: cannot find that player role (role index no.%insert_name%)"
    ErrorMessage(20)="ERROR: can't find that objective (objective index no.%insert_name%)"

    ErrorMessage(21)="ERROR: no valid type of drop location specified (i.e. AtObjective, AtGrid or AtCurrentLocation"
    ErrorMessage(22)="ERROR: invalid map grid co-ordinates"

    // from the local menu interactions:
    ErrorMessage(23)="To auto-login you must set up your DarkestHour.ini file with your admin login details"
    ErrorMessage(24)="No player found in sights"
}
