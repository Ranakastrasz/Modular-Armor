if not RanaMods then
    RanaMods = {}
end
if not RanaMods.ModularArmor then
    RanaMods.ModularArmor = {}
end
if not RanaMods.ModularArmor.config then
     RanaMods.ModularArmor.config = {}
end

--RanaMods.ModularArmor.config.Debug = true
RanaMods.ModularArmor.config.tickRate = 1 -- Logic runs each time this many ticks pass
RanaMods.ModularArmor.config.ticksPerSecond = 60
RanaMods.ModularArmor.config.secondsPerTick = RanaMods.ModularArmor.config.tickRate/RanaMods.ModularArmor.config.ticksPerSecond -- To avoid division operations in a loop


RanaMods.ModularArmor.config.accumulatorEnergyCap = 5*1000*1000*1000 --entity_prototypes["laser-turret-dummy"].energy_source.buffer_capacity --5. * 1000 * 1000      -- need a string to proper value converter
local ShieldDecayPerTick              = (1./100.) * RanaMods.ModularArmor.config.secondsPerTick
--RanaMods.ModularArmor.config.LowFuelMessage = true

RanaMods.ModularArmor.config.fuelCoef = 1.0
RanaMods.ModularArmor.config.powerCoef = 1.0

--[[
Settings
Allow power Coef for Burner and Nuclear generations - change the 10% 5% to whatever%
Shield Power Share - Lets shields charge faster at all times when taking damage, but costs the power immediately.
Enable Size-shifting - Boring Vanilla sizes or interesting revamped sizes.
Mini-equipment - Enables T0 shield and leg pieces
Shield Decay - Forces shield upkeep
Fusion Reactor - Fission reactor, uses nuclear fuel, RTG generator, uses nuclear fuel in construction only.
Conduit Coef.
Alien Fuel - If alien artifacts added back in by a mod, let use to make alien fuel (maybe merged with nuclear fuel too)
Roboport Storage -- Cuts roboport storage down to a more reasonable, less power-eating insanity level. 
]]--