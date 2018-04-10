//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2018
//==============================================================================

class DHMainBaseSupplyCache extends Actor
    placeable
    hidecategories(Collision,Lighting,LightColor,Karma,Force,Sound);

enum ETeamOwner
{
    TEAM_Axis,
    TEAM_Allies,
};

var() ETeamOwner                TeamOwner;                      // Set the team the main cache is for
var() int                       InitialSupplyCount;             // Initial amount of supply
var() int                       BonusSupplyGenerationRate;

var DHConstructionSupplyAttachment              SupplyAttachment;
var class<DHConstructionSupplyAttachment>       SupplyAttachmentClass;

function PostBeginPlay()
{
    // not sure if I need to create the attachement here
    CreateSupplyAttachment();
}

function Reset()
{
    if (SupplyAttachment != none)
    {
        DestroySupplyAttachment();
    }

    if (SupplyAttachment == none)
    {
        CreateSupplyAttachment();
    }
}

function int GetTeamIndex()
{
    return int(default.TeamOwner);
}

function MyOnSupplyCountChanged(DHConstructionSupplyAttachment CSA)
{
    if (CSA != none)
    {
        NetUpdateTime = Level.TimeSeconds - 1.0;
    }
}

function CreateSupplyAttachment()
{
    Log("Spawning the main supply cache attachment");

    // Spawn the supply attachment and set up the delegates.
    // We hide the supply attachment since we are going to handle the visualization through the the construction.
    SupplyAttachment = Spawn(SupplyAttachmentClass, self);

    if (SupplyAttachment == none)
    {
        Error("Failed to spawn supply attachment!");
    }

    SupplyAttachment.SetBase(self);
    SupplyAttachment.SetTeamIndex(GetTeamIndex());
    SupplyAttachment.OnSupplyCountChanged = MyOnSupplyCountChanged;
    SupplyAttachment.SetSupplyCount(default.InitialSupplyCount);
    SupplyAttachment.BonusSupplyGenerationRate = default.BonusSupplyGenerationRate;
    SupplyAttachment.bHidden = false; // CHANGE THIS BACK!
}

function DestroySupplyAttachment()
{
    if (SupplyAttachment != none)
    {
        Log("Now destroying it!");

        SupplyAttachment.Destroy();
    }
}

defaultproperties
{
    SupplyAttachmentClass=class'DHConstructionSupplyAttachment_Static_Main'
    InitialSupplyCount=8000
    BonusSupplyGenerationRate=240

    Texture=Texture'DHEngine_Tex.LevelActor'
    bHidden=true
    RemoteRole=ROLE_None
}
