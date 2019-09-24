--require "defines"
require "config"
--require 'libs/EvoGUI'
--require "interfaces"

--[[
    This module handles the gameloop alteration, allowing conduit modules in power armor grid to tranfer energy between your power grid and your armor.

]]--

--[[
    Figure out if you can access energy network with the get network command thinggy.
    Alternately, do aura search, steal power from accumulators and roboports. /Done
    
    Add command to disable conduit mechanics.
    Method to discharge energy into network?
]]--




--



function verifySettings()
    if (RanaMods.ModularArmor.config.tickRate < 0) then
        RanaMods.ModularArmor.config.tickRate = 1
        throwError("Tick rate must be >= 0.")
    end
end

script.on_init(function()
       -- globalPrint("onLoad")
    if (global.loaded == nil) then
        global.loaded = true
       -- globalPrint("loaded")
        
        verifySettings()
    end
    
    if (not global.modularArmor) then
        global.modularArmor = {}
    end
    if (global.ticking == nil) then
        global.ticking = 0
    end
end
)



function globalPrint(msg)
  local players = game.players
  --if RanaMods.ModularArmor.config.Debug then
      for x=1, #players do
        game.players[x].print(msg)
      end
  --end
end


function ticker() -- run once per tickRate number of gameticks.
    if (game.tick % RanaMods.ModularArmor.config.tickRate) == 0 then
        tick()
        
    else
    end
end
script.on_event(defines.events.on_tick, ticker)



function tickDummies(id,iSurface,iPosition) -- This and kill dummies need to use a factory. I have no idea what that is. Need research

    --GlobalPrint("2")
    if not id.units then
        id.units = {}
    else
        -- Already exists.
    end
    if not id.units.accumulator then
        id.units.accumulator = iSurface.create_entity{name = "laser-turret-dummy", position = iPosition, force=game.forces.player}
        id.units.accumulator.energy = RanaMods.ModularArmor.config.accumulatorEnergyCap -- initialize energy levels
        id.previousEnergy = id.units.accumulator.energy -- and previous energy level from last tick
        id.units.accumulator.destructible = false -- Make dummy invulnerable.
    else
        id.units.accumulator.teleport(iPosition) -- Ensure that the power drain dummy is always at the player's position.
    end
    
    
end
function killDummies(id)
    --GlobalPrint("1")
    if id.units then
        if id.units.accumulator then
            id.units.accumulator.destroy()
            id.units.accumulator = nil
        else
            -- Already gone
        end
        
    else
        -- Already deleted.
    end
end

function tick()
    local shouldKeepTicking
    local thisPlayer = nil
    local players = game.players
    --globalPrint("tick")

    
    for x=1, #players do
        thisPlayer = players[x]
        if (thisPlayer.connected) then
            if (thisPlayer.character) then
                local modularArmor = global.modularArmor[x]
                
                if (not modularArmor) then
                    
                    modularArmor = {} -- ensure player has data attached
                    global.modularArmor[x] = modularArmor
                    
                    
                end
                
                if (not modularArmor.shieldData) then
                    modularArmor.shieldData = {}
                    modularArmor.shieldData.previousShield = 0
                    modularArmor.shieldData.lastDamage = 0
                end
                
                -- DISABLED HERE. No idea why this isn't working anymore, yet. 
                local armor = nil--thisPlayer.get_inventory(defines.inventory.player_armor)[1] -- Check for armour presence.
                
                if (armor ~= nil and armor.valid_for_read) then
                    
                    if (armor.grid) then -- Check for grid existence.
                        local grid = armor.grid
                        
                        tickDummies(modularArmor,thisPlayer.character.surface,thisPlayer.character.position)-- validate, create, and move dummy units.
                        
                        
                        
                        local transferRate = 0 -- Rate of transfer from external network to armor.
                    
               
                        local energy = 0 -- Total energy and energy capacity
                        local energyCap = 0
                        local shieldHealth = 0 -- Total shield and shield capacity. For autobalance, and conduit limitation.
                        local shieldCap = 0
                        for x,equipment in ipairs(grid.equipment) do -- Loop through all equipment.
                            if (equipment.max_energy ~= 0) then
                                energy = energy + equipment.energy -- If it has energy, add values to total value.
                                energyCap = energyCap + equipment.max_energy
                                --if equipment.type == "battery-equipment" then
                                --    hasBattery = true
                                --else
                                
                                --end
                            else
                            
                            end
                            
                            if equipment.max_shield ~= 0 then
                                shieldHealth = shieldHealth + equipment.shield -- Same with shield.
                                shieldCap = shieldCap + equipment.max_shield
                            else
                            
                            end
                            
                            local prototype = equipment.prototype
                            if (equipment.burner ~= nil) then
                            
                                --globalPrint(equipment.burner.fuel_categories["rana-conduit"])
                                if (equipment.burner.fuel_categories["rana-conduit"]) then
                                    -- Max power output per second minus remaining fuel.
                                    local energyWanted = (prototype.energy_production) - equipment.burner.remaining_burning_fuel
                                    transferRate = transferRate + energyWanted
                                    --equipment.burner.currently_burning = "conduit-fuel"
                                    --equipment.burner.remaining_burning_fuel = 100000000000
                                end
                            end
                            
                        end
                        
                        
                        
                        local shieldFraction = grid.shield / grid.max_shield
                        
                        if shieldCap > 0 then
                            
                            if shieldHealth < modularArmor.shieldData.previousShield then
                                -- Took damage last tick.
                                modularArmor.shieldData.lastDamage = 0
                            else
                                -- Not taking damage this tick. Might have taken damage previously however.
                                
                            end
                            if modularArmor.shieldData.lastDamage < 300 then
                                transferRate = transferRate * 0.1
                            else
                            end
                            
                            modularArmor.shieldData.previousShield = shieldHealth
                            modularArmor.shieldData.lastDamage = modularArmor.shieldData.lastDamage+1
                        else
                            
                        end
                        
                        local energyWanted = energyCap-energy
                        
                        local transferRate = math.min(transferRate,energyWanted) -- We cant transfer energy without space to put it into
                        
                        
                        --local accumulatorEnergy = 0*conversionAntiRatio -- Temporarily removed.
                        local accumulatorEnergy = (modularArmor.units.accumulator.energy - modularArmor.previousEnergy)--*conversionAntiRatio -- How much energy was accumulated since last tick
                        --globalPrint("Accumulator "..accumulatorEnergy)
                        local energyToAdd = math.min(transferRate,accumulatorEnergy) -- Accumulated energy, or transfer wanted, whichever is lower.
                        local newEnergy = energy+energyToAdd
                        local storageRatio = newEnergy/energyCap
                        
                        accumulatorEnergy = accumulatorEnergy - energyToAdd -- Remove
                        
                        --globalPrint("Accumulator "..accumulatorEnergy)
                        
                        -- SFX
                        -- if energyToAdd >= 10000 and game.tick%60 == 0 then
                        --    global.surface.create_entity{name = "conduit-sparks", position = thisPlayer.character.position, force=game.forces.neutral}
                        --end
                        --global.surface.create_entity{name = "smoke-fast", position = thisPlayer.character.position, force=game.forces.neutral} 
                        
                       
                        
                        -- I have energy to add, Energy Cap, and current energy.
                        -- I want to give amount proportional to amount missing to each elements. Ones with less get a higher fraction.
                        -- The amount I have available needs to be split into fractions of amount missing overall.
                        -- For each point missing from an element, add energyFraction to it.
                        -- Calc extra as well, and if it is greater than like 10%, feed into accumulator for next tick.
                        
                        --globalPrint("energyToAdd"..energyToAdd)
                        
                        --globalPrint("energySpent"..energySpent)
                        --shieldHealth = 0
                        for x,equipment in ipairs(grid.equipment) do -- Basic Setup. Distribute as much to first in line, remainder to next, and next, till you run out.
                             if (equipment.burner ~= nil) then
                                if (equipment.burner.fuel_categories["rana-conduit"]) then
                                    local prototype = equipment.prototype
                                    local energyWanted = (prototype.energy_production) - equipment.burner.remaining_burning_fuel
                                    --globalPrint("energyWanted "..energyWanted)
                                    --globalPrint("energyToAdd "..energyToAdd)
                                    equipment.burner.currently_burning = "conduit-fuel"
                                    if (energyToAdd > energyWanted) then
                                        energyToAdd = energyToAdd - energyWanted
                                        equipment.burner.remaining_burning_fuel = prototype.energy_production
                                    else
                                        equipment.burner.remaining_burning_fuel = equipment.burner.remaining_burning_fuel + energyToAdd
                                        energyToAdd = 0
                                    end
                                end
                            end
                            if (equipment.max_shield ~= 0) then
                                
                                equipment.shield = equipment.max_shield * shieldFraction -- This part is a quick autobalance. All shields get equal power.
                                --shieldHealth = shieldHealth + equipment.shield
                                --equipment.shield = equipment.shield - (equipment.max_shield*ShieldDecayPerTick)
                            else -- Ideally, I want to send power from high efficiency ones to lower efficiency ones. That minimizes power consumption.
                                
                            end
                            
                        end
                        
                        
                        
                        modularArmor.units.accumulator.energy = RanaMods.ModularArmor.config.accumulatorEnergyCap - transferRate--*conversionRatio
                        modularArmor.previousEnergy = modularArmor.units.accumulator.energy --*conversionRatio -- The additional accumulated energy over
                        
                        
                    
                    else
                        killDummies(modularArmor)
                    end
                else
                    killDummies(modularArmor)
                end
            else
                -- No player
                --killDummies(modularArmor)
            end
        end
            
    end
end