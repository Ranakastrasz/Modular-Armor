[size=200]Modular Armor Revamp[/size]

[size=150]Description:[/size]
[list]Alters all modular armor equipment, adds multiple new generators, extra tiers of existing modules, and higher tier armor.[/list]

[size=150]Details:[/size]
[list][b]
[*] Factorio Version: [color=#0000FF]0.15[/color]
[*] Released: [color=#0000FF]August 15th 2015[/color]
[*] License: [color=#0000FF]MIT License[/color]
[*] Tags: [color=#0000FF]Modular Armor[/color]
[/b][/list]

[size=150]Download[/size]



[color=#0000FF][b][attachment=0]Modular-Armor_15.0.1.zip[/attachment][/b][/color]





This mod tweaks and rebalances pretty much everything connected to modular armor.

Simple changes
-All armor is fabricated used the previous tier of armor. [color=#FF0000]WARNING- Remove All modules before upgrading to a higher armor tier. Any modules in the armor when upgrading are lost.[/color]

Quick Summery
-Adds new types of generator equipment that use fuel or take power from your electric network.
-Fusion reactor is renamed Fission Reactor, and uses Nuclear Fuel.
-Adds lower or higher tiers of some equipment


[spoiler=Generators][code]
-Solar
    As Vanilla, but larger and more powerful. 3x the size, 7.5x the power
    Produces 75kW(525kW), takes up 3x1 space. 25kW(17.5kW)/tile.
    Power Rating of 2.5(Day) or 1.75(Averaged)
    Condition: sunlight - no player control; 70% averaged up-time
    Just as efficient than Burners during the day, less efficient averaged out.

-Solar Mk2
    Larger version, more efficient. 
    Can transfer 300kW(210kW), takes up 5x2 space. 30kW(21kW)/tile
    Condition: sunlight - no player control; 70% averaged up-time
    Power Rating of 3.0(Day) or 2.1(Averaged)
    More efficient than Burners during the day. Less efficient averaged out.

DISABLED
-Semi-Conducting Conduit

    Transfers power from your energy network. Reduced effectiveness when shield takes damage.
    Can transfer 40kW (4kW), takes up 1x1 space. 40kW/tile (4kW/tile)
    Power Rating of 4.0 (0.4 with shield damage)
    Condition: must be near Pole grid/in base. When a shield takes damage, transfer rate drops to 10% for 5 seconds.
    Powerful and space efficient, but doesn't work outside of a power field, and has reduced effect in combat.
    This is because the power production is done outside of the armor. <Old Information> Each Conduit consumes ~0.8 steam engines or 7 Solar Panels worth of production when running.
	
DISABLED
-Super-Conducting Conduit
    Transfers large amounts of power from your energy network. Reduced effectiveness when shield takes damage.
    Can transfer 720kW(72kW), takes up 3x3 space. 80kW/tile(8kW)
    Power Rating of 8.0 (0.8 with shield damage)
    Condition: must be near Pole grid/in base.  When a shield takes damage, transfer rate drops to 10% for 5 seconds.
    Massively and space efficient, but doesn't work outside of a power field, and has reduced effect in combat.
    This is because the power production is done outside of the armor. Old Information>  Each Super Conduit consumes ~15 steam engines or 120 Solar Panels worth of production when running.

-Burner
    Basic fuel-powered generator. Uses engines, steel, and advanced circuits to fabricate.
    Produces 100kW, takes up 2x2 space. 25kW/tile
    Power Rating of 2.5
    Condition: fuel - is under player control
    Consumes Chemical fuel to Run.
	Miniaturization  results in only 10% efficient, consuming solid fuel (25 MW) in 25 seconds instead of 4 minutes.
	Fuel is easily available by cutting down trees, but logs only last 4 seconds each.
	
	
-Semiconductor Conduit
    
-Fission (Fusion)
    Advanced fuel-powered generator. Produces 0.96MW of power, or 960kW using Reactor Fuel
    Produces 960kW, takes up 4x4 spaces. 60kW/tile.
	Power Rating of 6
    Condition: must have Esoteric fuel - somewhat expensive, but under player control.
    Produces more power than any other generator
    Uses several shield generators in it's construction for the containment field, resulting in a very steep price.
	Only 5% efficiency, due to lack of bulky supporting infrastructure.
	Nuclear Fuel with a 8GW only provide 400 mW, lasting just under 7 minutes, instead of the 2 hours and 30 minutes it would otherwise be. 


-Conduits are intended for cheap and easy in-base usage. High efficiency, but only works in base. Limited utility when outside. Batteries generally required to supplement. Alternatively, drag power lines behind you.

-Solar Panels are good for combat or utility. No fuel requirement results in zero operating costs, and significant production, but they shut down at night and have the lowest sustained production.

-Generators are intended for combat. Fuel requirement makes it more costly to use, but the higher generation rate makes it good for fighting. The fuel is generally rather cheap and easy to obtain.

-Fusion reactors are dedicated to fighting. Massive power output away from base, but costs expensive fuel to run. Hence, using it at all times is inadvisable, unless you are willing to burn a lot of uranium.
[/code][/spoiler]
[spoiler=Batteries][code]
-Mk1
	1x1, 10MJ capacity.
	10 MJ/tile
-Mk2
	2x1, 50MJ capacity.
	25 MJ/tile
-Mk3
	2x2, 200MJ capacity.
	50 MJ/tile
-Mk4
	4x2, 1,800MJ capacity.
	100.5 MJ/tile
	
[/code][/spoiler]
[spoiler=Utilities][code]
-Basic Actuator Equipment
    Lower tier exoskeleton equipment.
    25kW for 5% speed boost.  1x2
    Cheaper and earlier available.
    More energy efficient, but less space efficient.
    Easier to fit in lower tier armor.
    Uses normal engines and advanced circuits.
	
-Advanced Actuator Equipment
    200kW for 30% speed boost, 2x4, Same as Vanilla.
    Uses Basic Actuator Equipment.
    
	[/code][/spoiler]
	[spoiler=Shields][code]

-Basic shield generator
    5 Capacity, uses 10kj/shield point.
    Cheap, 1x1, high efficiency, tiny capacity, slow recharge.
	Not very strong, even in large numbers. 10 are required to match a vanilla Mk1, and that doesn't add up to much protection.
    is built from Electrostatic shield generators, as well as a speed module.
-Shield Generator
    Same as current shield generator
    Uses 10 basic shields, red circuits, steel, and some superconducting coil to produce.
-Shield Generator Mk2
    Similar to old one, all stats scaled up ~2.25.
	3x3 in size as well, which is also 2.25x larger.
    Requires a T3 speed module.
	Harder to fit, but much more impressive.
	[/code][/spoiler]
[spoiler=Armor][code]
-Heavy
	Requires Light armor, 10 less steel.
	
-Modular
	Requires Heavy Armor instead of steel
-Power Armor
	Requires Modular Armor instead of steel
	Requires 10 speed modules.
-Power Armor Mk2
	Requires Power Armor instead of steel
	Requires 10 Mk2 Modules instead of 5 Mk3
	Requires 50 Engine Units
	
-Power Armor Mk3
	-Higher Tier Armor.
	Easily an Order of Magnitude more expensive, in exchange for
		44% more capacity. Well worth the price however.
		
	-Tech
		500x
			Science 1 - 1x
			Science 2 - 1x
			Science 3 - 2x
			Military  - 3x
			High Tech - 5x
	-Costs
		Requires Power Armor Mk2
		Effeciency, Speed, and Productivity Modules-3 x20
		200 Electric Engine Units.
		200 Processing Units.
		200 low-density-structure
	
	-Resistances
		Physical (12,45%)
		Acid (12,45%)
		Fire (85%)
		Explosion (25,55%)
	
	-Storage
		12x12 Capacity
		+40 Inventory Slots

-Power Armor Mk4
	-Maximum Tier Armor.
		More expensive still, even requiring Rocket Science.
		56% more capacity, Overall about double that of Mk2.
	-Tech
		x1000
			Science 1 - 2x
			Science 2 - 3x
			Science 3 - 5x
			Military  - 5x
			High Tech - 5x
			Space     - 5x
	-Costs
		Power Armor Mk3
		Effeciency, Speed, and Productivity Modules-3 x100
		500 Electric Engine Units.
		1000 Processing Units.
		1000 low-density-structure.
	
	-Resisttances
		Physical (15,50%)
		Acid (15,50%)
		Fire (90%)
		Explosion (30,60%)
	-Storage
		15x15 Capacity.
		+50 Inventory Slots.[/code][/spoiler]
[spoiler=Pictures][size=150]Pictures[/size]

[img]http://i.imgur.com/qrHA2mb.png[/img][/spoiler]

[spoiler=Credits]Charging Module Icon
Battery Icons
Burner Generator Icon
Artist: Arch666Angel[/spoiler]
[spoiler=TODO][code]
To Do
-Boost batteries. Add higher tier,larger battery(s) /Done
-Finish tech fixing / Need module prerequisits still
-Add GUI display for fuel.
-Add custom fuel slot.
-Method to discharge energy into network
-Better energy distribution
-Shield autobalance /Partial /Broken, disabled. / Re-enabled, seems to work, no idea why.
-Integrate auto-update for other mods. / Appears to work.
-Add localization-tooltip value script?
[/code][/spoiler]

[spoiler=CHANGLOG][code]
14.1.1: Updated for Factorio 0.14
0.2.8: Added Generator cutoff threshhold.
0.2.7: Adjusted prices. Fixed Fuel Coef, Fixed T2 shield name.
0.2.6: Fixed Gameloop crash. Again. And loading issue. Again. Probably successful this time.
          Power Conduit Shield Interference added.
0.2.4: Fixed Gameloop crash
0.2.3: Power Conduit migration Fixed.
0.2.2: Power Conduit Equipment Split into Semi-conductor Conduit Equipment and Super-Conductor Conduit Equipment.
          Tried to Fix Migration scripts.. Again. (Tech research for pre-existing games)
          Dummy Pole and Solar Panel removed. Workaround Workaround was found.
          Burner Generator price increased.
          Electrostatic shield price increased.
          Armor recipes adjusted for assembler compatibility.
0.2.1: Added inventory size bonus to Mk3 and Mk4 Armor.
0.2.0: 0.13.0 Release
          added fire resist to mk3 and mk4 Armor.
          Increased battery capacity to compare to vanilla.
          Cut Global power multiplier from 100x to 10x, due to vanilla's new 10x multiplier.
0.1.8: Added new graphics from Arch666Angel for Burner Generator
          Altered prices again.
          Reduces Productivity module requirements.
          Re-buffed Conduit 400kW -> 600 kW.
          REMOVED SUEPRCONDUCTING COIL
0.1.7: Significant price and tech rebalance.
          New Sprites for Conduit and Batteries.
          Updated Icons and tech images.
0.1.5: Fusion reactor 10MW -> 9.6 MW
          Conduit 800kW -> 400 kW
          Solar Panel Mk2 Sprite Fixed.
0.1.4: Superconductor Coil stacks to 500 instead of 200
          Alien Fuel stacks to 200 isntead of 50
          Rocket fuel can be crafted into Alien Fuel more efficiently. It cannot be burned directly.
0.1.3: Updated Tech Icons
          Updated Solar Equipment Icons
          Updated Techtree
          Altered Actuator Prices.
          Altered Power Armor Prices
          Added rocket fuel as a weak but valid Fusion Fuel.
          Doubled Global power multiplier from 50x to 100x.
          -Various Script Alterations
0.1.2: Laser upgrades
Solar Migration Fix
Prefusion Compatability fix
0.1.0: Bob's Mod Removed
          Slight Solar Buff
0.0.22: Bob's Mod Compatability Prototype.
           Added Solar panels back in
           Removed shield pulse SFX
0.0.21: Added Config options
0.0.20: Removed Solar panels
            Burner Generator to T3
            Re-enabled Shield autobalance
            Added Shield animation
0.0.19: Updated for 0.12.18
0.0.18: Updated for 0.12.11
0.0.17: Added mk3 and Mk4 Powered Armor
0.0.16: Fixed Actuator equipment icons.
            Fixed orders for all items and techs.
            Renamed shields from basic, Mk1, and Mk2 to Mk1, Mk2, Mk3
            Fixed prerequisites for Mk1 Shield, Fusion Reactor, Advanced Actuator, 
0.0.15: Conduits properly stack past 12 now.
0.0.14: Superconducting Cable stack size 50->200
            Personal Roboport power values are no longer increased 50x like other modules.
            Used table insert instead of overwrite for existing technology.
0.0.12:Buffed Solar panels, Nerfed Conduit. 
0.0.11:Hopefully fixed migration issue.
0.0.10:Added experimental mod integration. Other mods that add equipment should also be scaled.
          Reduced cost of producing Alien fuel again.
0.0.9: Removed built in Conduit from modular armor.
          Increased cost of producing Alien Fuel
          Fixed Night Vision goggle's scale.
          Increased conduit transfer rate.
          Removed Fusion reactor free power generation
          Removed Battery requirement for fuel threshhold.
          Enabled Depleted Fuel Indicator.
0.0.8: Removed experimental shield autobalance.
          Increased fuel threshholds from 90% and 50% to 99% and 98%.
          Fixed icons and localization, probably.
0.0.7: Fixed migration script, allowing crafting of alien fuel and superconductor in existing games.
          Increased conduit transfer rate from 150 to 250
0.0.6: Added shield autobalance, albiet not an ideal one.
       Fixed crash when character is invalid.
       Added localization for all dummies, incase they show up.
0.0.5: Increased values an additional 5x. This ensures that energy costs are somewhat comparable with higher tier machines. 
       Added upgraded Batteries, and increased battery power.
0.0.4: Replaced Accumulator dummy with Laser turret dummy. Can get power from accumulators now.
       Added Power pole and Solar panel dummies, which should entirely remove lightning bolt animation
       Dummy units get removed if you remove the armor, the character is invalid, or you have old armor
       Fixed fatal error when you equip armor with no grid.
0.0.3: Hopefully fixed power outage warning.[/code][/spoiler]
[spoiler=Prefusion CHANGLOG][code]
14.0.3: Updated for Factorio 0.14
0.0.3: Updated for Factorio 0.13.0
0.0.2: Added exclusion for Modular armor, to avoid solar buff stacking.
0.0.1: Initial Release[/code][/spoiler]