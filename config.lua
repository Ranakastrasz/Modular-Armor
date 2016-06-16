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
RanaMods.ModularArmor.config.tickRate = 1-- Logic runs each time this many ticks pass
RanaMods.ModularArmor.config.ticksPerSecond = 60
RanaMods.ModularArmor.config.secondsPerTick = RanaMods.ModularArmor.config.tickRate/RanaMods.ModularArmor.config.ticksPerSecond -- To avoid division operations in a loop


RanaMods.ModularArmor.config.accumulatorEnergyCap = 5*1000*1000*1000 --entity_prototypes["laser-turret-dummy"].energy_source.buffer_capacity --5. * 1000 * 1000      -- need a string to proper value converter
--local ShieldDecayPerTick              = (1./100.) * secondsPerTick
RanaMods.ModularArmor.config.LowFuelMessage = true

RanaMods.ModularArmor.config.fuelCoef = 1.0
RanaMods.ModularArmor.config.powerCoef = 100.0
