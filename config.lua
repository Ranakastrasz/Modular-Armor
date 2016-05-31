
if not config then
    config = {}
end
--config.Debug = true
config.tickRate = 1-- Logic runs each time this many ticks pass
config.ticksPerSecond = 60
config.secondsPerTick = config.tickRate/config.ticksPerSecond -- To avoid division operations in a loop


config.accumulatorEnergyCap = 5*1000*1000*1000 --entity_prototypes["laser-turret-dummy"].energy_source.buffer_capacity --5. * 1000 * 1000      -- need a string to proper value converter
--local ShieldDecayPerTick              = (1./100.) * secondsPerTick
config.LowFuelMessage = true

config.fuelCoef = 1.0
config.powerCoef = 50.0
