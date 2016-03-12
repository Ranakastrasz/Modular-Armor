
if not config then
    config = {}
end
--config.Debug = true
config.tickRate = 1-- Logic runs each time this many ticks pass
config.ticksPerSecond = 60
config.secondsPerTick = config.tickRate/config.ticksPerSecond -- To avoid division operations in a loop


config.accumulatorEnergyCap = 5*1000*1000*1000 --entity_prototypes["laser-turret-dummy"].energy_source.buffer_capacity --5. * 1000 * 1000      -- need a string to proper value converter
config.ConduitTransferRatePerEquipment = 400. * 1000 * config.secondsPerTick
--local ShieldDecayPerTick              = (1./100.) * secondsPerTick
config.LowFuelMessage = true
config.ShieldAnimation = true

config.fuelCoef = 1.0
config.powerCoef = 50.0

config.fuelValues =
{
    [1] = {
        type = "engine-equipment",
        name = "burner",
        power = 500. * 1000 * config.secondsPerTick,       -- Production per tick at max rate
        threshhold = 0.99,                      -- Power must be below this value for this type of generator to run
        {[1] = {"solid-fuel", 25.*1000*1000*config.fuelCoef}}, -- Value of each fuel type.
        {[2] = {"coal"      ,  8.*1000*1000*config.fuelCoef}}, 
        {[3] = {"raw-wood"  ,  4.*1000*1000*config.fuelCoef}},
    },
    [2] = {
        type = "fusion-reactor-equipment",
        name = "fusion",
        threshhold = 0.98,
        power = 5000. * 1000 * config.secondsPerTick,
        {[1] = {"alien-fuel", 100.*1000*1000*config.fuelCoef}},
    }
}