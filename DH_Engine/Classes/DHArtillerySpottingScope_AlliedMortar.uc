//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2019
//==============================================================================

class DHArtillerySpottingScope_AlliedMortar extends DHArtillerySpottingScope
    abstract;

defaultproperties
{
    // to do: replace with some cool American overlay
    SpottingScopeOverlay=Texture'DH_VehicleOptics_tex.British.BesaMG_sight'

    // to do: confirm those values are correct!
    RangeTable(0)=(Range=125,Pitch=84.0)
    RangeTable(1)=(Range=150,Pitch=82.5)
    RangeTable(2)=(Range=175,Pitch=81.5)
    RangeTable(3)=(Range=200,Pitch=80.0)
    RangeTable(4)=(Range=225,Pitch=79.0)
    RangeTable(5)=(Range=250,Pitch=77.5)
    RangeTable(6)=(Range=275,Pitch=76.0)
    RangeTable(7)=(Range=300,Pitch=75.0)
    RangeTable(8)=(Range=325,Pitch=73.5)
    RangeTable(9)=(Range=350,Pitch=72.0)
    RangeTable(10)=(Range=375,Pitch=70.5)
    RangeTable(11)=(Range=400,Pitch=69.0)
    RangeTable(12)=(Range=425,Pitch=67.0)
    RangeTable(13)=(Range=450,Pitch=65.5)
    RangeTable(14)=(Range=475,Pitch=63.5)
    RangeTable(15)=(Range=500,Pitch=61.0)
    RangeTable(16)=(Range=525,Pitch=59.0)
    RangeTable(17)=(Range=550,Pitch=56.0)
    RangeTable(18)=(Range=575,Pitch=52.0)

    YawScaleStep=5.0
    PitchScaleStep=0.5
    PitchDecimalsTable=1
    
    SegmentSchema(0)=(Shape=LongTick,DrawLabel=true)
    SegmentSchema(1)=(Shape=ShortTick,DrawLabel=false)
    SegmentSchema(2)=(Shape=ShortTick,DrawLabel=false)
    SegmentSchema(3)=(Shape=ShortTick,DrawLabel=false)
    SegmentSchema(4)=(Shape=ShortTick,DrawLabel=false)
    SegmentSchema(5)=(Shape=MediumLengthTick,DrawLabel=false)
    SegmentSchema(6)=(Shape=ShortTick,DrawLabel=false)
    SegmentSchema(7)=(Shape=ShortTick,DrawLabel=false)
    SegmentSchema(8)=(Shape=ShortTick,DrawLabel=false)
    SegmentSchema(9)=(Shape=ShortTick,DrawLabel=false)
}
