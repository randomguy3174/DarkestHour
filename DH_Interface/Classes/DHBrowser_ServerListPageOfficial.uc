//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2021
//==============================================================================

class DHBrowser_ServerListPageOfficial extends UT2K4Browser_ServerListPageBase;

var array<ExtendedConsole.ServerFavorite> Servers;

var array<string> ContextItems;
var protected array<GameInfo.ServerResponseLine> OfficialServers;
var protected ServerQueryClient SQC;

function InitComponent(GUIController MyController, GUIComponent MyOwner)
{
	local int i;

	super.InitComponent(MyController, MyOwner);

	GetQueryClient();

    class'DHInterfaceUtil'.static.SetROStyle(MyController, Controls);

    class'DHInterfaceUtil'.static.ReformatLists(MyController, lb_Server);
    class'DHInterfaceUtil'.static.ReformatLists(MyController, lb_Rules);
    class'DHInterfaceUtil'.static.ReformatLists(MyController, lb_Players);
}

function InitPanel()
{
	super.InitPanel();

	InitServerList();
	// Browser.OnAddFavorite = AddFavorite;
}

function OnDestroyPanel(optional bool bCancelled)
{
	super.OnDestroyPanel(bCancelled);
	ClearQueryClient();
}

function LevelChanged()
{
	super.LevelChanged();
	ClearQueryClient();
}

function Free()
{
	super.Free();
	ClearQueryClient();
}

function ShowPanel(bool bShow)
{
	super.ShowPanel(bShow);

	if (bShow)
    {
        bInit = False;
    }
}

function InitServerList()
{
    li_Server = new(none) class'DH_Interface.DHBrowser_ServersList';

    lb_Server.InitBaseList(li_Server);

    lb_Server.HeaderColumnPerc = li_Server.InitColumnPerc;

	InitFavorites();
}

function InitFavorites()
{
	local int i;

	for (i = 0; i < OfficialServers.Length; ++i)
	{
		li_Server.MyOnReceivedServer(OfficialServers[i]);
	}
}

function Refresh()
{
	Super.Refresh();
	InitFavorites();
	RefreshList();
}

function RefreshList()
{
	GetQueryClient();
	ResetQueryClient(SQC);
	CancelPings();
	Super.RefreshList();
}

function CancelPings()
{
	if (SQC != none)
    {
        SQC.CancelPings();
    }
}

function PingServer( int listid, ServerQueryClient.EPingCause PingCause, GameInfo.ServerResponseLine s )
{
	GetQueryClient();

	if( PingCause == PC_Clicked )
    {
        SQC.PingServer(listid, PingCause, s.IP, s.QueryPort, QI_RulesAndPlayers, s);
    }
	else
    {
        SQC.PingServer(listid, PingCause, s.IP, s.QueryPort, QI_Ping, s);
    }
}

function ReceivedPingInfo( int ServerID, ServerQueryClient.EPingCause PingCause, GameInfo.ServerResponseLine s )
{
	local ExtendedConsole.ServerFavorite Fav;
	local int i;

	super.ReceivedPingInfo(ServerID, PingCause, s);

	li_Server.MyReceivedPingInfo(ServerID, PingCause, s);

	if (PingCause == PC_AutoPing)
    {
        UpdateStatusPingCount();
    }
}

function ReceivedPingTimeout( int listid, ServerQueryClient.EPingCause PingCause  )
{
	li_Server.MyPingTimeout(listid, PingCause);

	if (PingCause == PC_AutoPing)
    {
        UpdateStatusPingCount();
    }
}

function ServerQueryClient GetQueryClient()
{
	local int i;

	if (SQC == None)
	{
		SQC = PlayerOwner().Spawn(class'ServerQueryClient');

		if (SQC != None && SQC.NetworkError())
		{
			// Handle network error
			do
			{
				Log(Name@"- Network error in query client - retrying  "$i);
				SQC.Destroy();
				SQC = PlayerOwner().Spawn( class'ServerQueryClient' );
			} until ( !SQC.NetworkError() || ++i < 10 )

			if ( i >= 10 )
			{
				// Unresolvable network error
				ShowNetworkError();
				return None;
			}
		}

		SQC.OnReceivedPingInfo = ReceivedPingInfo;
		SQC.OnPingTimeout = ReceivedPingTimeout;

		log(Name@"Spawned new ServerQueryClient '"$SQC$"'");
	}

	return SQC;
}

protected function ClearQueryClient()
{
	if (SQC != none)
	{
		Log(Name@"Destroying ServerQueryClient '"$SQC.Name$"'");
//		SaveFavorites();
		CancelPings();
		SQC.Destroy();
		SQC = None;
	}
}

defaultproperties
{
	PanelCaption="Server Browser : Official Server"

    OfficialServers(0)=(ServerID=0,IP="185.38.151.35",Port=7757,QueryPort=7758,ServerName="Official Server 1")
    OfficialServers(1)=(ServerID=0,IP="185.38.151.251",Port=7797,QueryPort=7798,ServerName="Official Armored Server #1")
    OfficialServers(2)=(ServerID=0,IP="185.38.151.245",Port=7777,QueryPort=7778,ServerName="Official Server #2")

    Begin Object Class=DHGUISplitter Name=HorzSplitter
        DefaultPanels(0)="DH_Interface.DHBrowser_ServerListBox"
        DefaultPanels(1)="DH_Interface.DHGUISplitter"
        MaxPercentage=0.9
        OnReleaseSplitter=DHBrowser_ServerListPageOfficial.InternalReleaseSplitter
        OnCreateComponent=DHBrowser_ServerListPageOfficial.InternalOnCreateComponent
        IniOption="@Internal"
        WinHeight=1.0
        RenderWeight=1.0
        OnLoadINI=DHBrowser_ServerListPageOfficial.InternalOnLoadINI
    End Object
    sp_Main=DHGUISplitter'DH_Interface.DHBrowser_ServerListPageOfficial.HorzSplitter'

    RulesListBoxClass="DH_Interface.DHBrowser_RulesListBox"
    PlayersListBoxClass="DH_Interface.DHBrowser_PlayersListBox"
    DetailSplitterPosition=0.465621

    bStandardized=true
    StandardHeight=0.8
}
