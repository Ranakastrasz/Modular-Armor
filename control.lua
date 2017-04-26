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
    -Shield pulse visial /Done, Removed to seperate mod
    -Better Energy Distribution
    -Sheld autobalance /Done
    -Boost batteries. Add higher tier,larger battery(s) /Done
    -Finish tech fixing /Done
    -Add GUI display for fuel.
    -Add custom fuel slot.
    -Method to discharge energy into network?
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
    --refresh_equipment()
    
    --[[if (not global.surface) then
        global.surface = game.surfaces['nauvis']
    end]]--
    if (not global.modularArmor) then
        global.modularArmor = {}
    end
    if (global.ticking == nil) then
        global.ticking = 0
    end
	--if not evo_gui then
		--evo_gui = EvoGUI.new(Natural_Evolution_state)
		--evo_gui = EvoGUI.new(Expansion_State)
		
	--end	
end
)


script.on_load(function(data)
    -- If anything changes, at all, refresh everything. 
    -- All mods altering this stuff must do so as well.

    --refresh_equipment()
    --[[if data.mod_charges ~= nil then
        refresh_equipment()
    end]]--

    --[[if data.mod_changes ~= nil and data.mod_changes["Modular-Armor"] ~= nil then
        if data.mod_changes["Modular-Armor"].old_version == nil then
            -- "My Mod" was added to an existing game
            refresh_equipment()
        elseif data.mod_changes["Modular-Armor"].old_version ~= data.mod_changes["Modular-Armor"].new_version then
            refresh_equipment()

        end
    end]]--
end)

function globalPrint(msg)
  local players = game.players
  --if RanaMods.ModularArmor.config.Debug then
      for x=1, #players do
        game.players[x].print(msg)
      end
  --end
end



--[[function registerEquipmentGroup(iGroup)

    --iGroup.mod = iMod
    if not RanaMods.ModularArmor.equipmentData then
        RanaMods.ModularArmor.equipmentData = {}

    end
    if iGroup and iGroup.name and iGroup.type then
        
        for _, v in pairs(RanaMods.ModularArmor.equipmentData) do
            if v.name == iGroup.name then
                return
            end
        end
        table.insert(RanaMods.ModularArmor.equipmentData, iGroup)
        
    else
        return "Invalid Table"
    end
end

function registerPrototype (iGroup,iPrototype,iType)
-- Ideally, this will register equipment group itself, if it doesn't yet exist.
    if not RanaMods.ModularArmor.equipmentData then
        RanaMods.ModularArmor.equipmentData = {}
    end
    if iGroup and iGroup.name and iGroup.type then
        if iPrototype and iPrototype.name and iPrototype.power then
            if iType == "equipment" then
                iPrototype.power = iPrototype.power * RanaMods.ModularArmor.config.powerCoef *RanaMods.ModularArmor.config.secondsPerTick
            end
            for _, v in pairs(RanaMods.ModularArmor.equipmentData) do
                if v.name == iGroup.name then

                    thisTable = nil
                    if iType == "equipment" then
                        if not v.equipment then
                            v.equipment = {}
                        end
                        thisTable = v.equipment
                    elseif iType == "fuel" then
                        if not v.fuel then
                            v.fuel = {}
                        end
                        thisTable = v.fuel
                    else
                        globalPrint("Invalid Type "..iType)
                        return "Invalid Type"
                    end
                    if not v[iType] then
                        v[iType] = {}
                    end
                    
                    for _, data in pairs(v[iType]) do
                        if data.name == iPrototype.name then
                            -- if it already exists, overwrite it.
                            data = iPrototype
                            return
                        end
                    end
                    table.insert(v[iType], iPrototype)
                    
                    break
                end
            end
        else
            return "Invalid iPrototype"
        end
    else
        return "Invalid iGroup"
    end
end]]--


--[[function reset_equipment()
    RanaMods.ModularArmor.equipmentData = {}
end]]--

--function refresh_equipment()
    --[[luadata = {raw = loadstring(game.entity_prototypes["DATA_RAW"].order)()}
    reset_equipment()
    for i, equipment in pairs (luadata.raw["battery-equipment"]) do
        if equipment.rana_mod then
            if equipment.rana_mod.powerType then
                -- This will happen repeatedly, but it should work correctly even with duplicate registrations, just failing instead.
                registerEquipmentGroup({name = equipment.rana_mod.powerGroup,type = equipment.rana_mod.powerType})
                registerPrototype({name = equipment.rana_mod.powerGroup,type = equipment.rana_mod.powerType},{name = equipment.name     ,power =  equipment.rana_mod.fuelPower},"equipment")
            end
            -- might have more data attachment types later.
        end
    end
    
    for i, fuel in pairs (luadata.raw["item"]) do
        if fuel.rana_mod then

            if fuel.rana_mod.powerType then
            
                registerEquipmentGroup({name = fuel.rana_mod.powerGroup,type = fuel.rana_mod.powerType})
                registerPrototype({name = fuel.rana_mod.powerGroup,type = fuel.rana_mod.powerType},{name = fuel.name     ,power =  fuel.rana_mod.fuelPower},"fuel")
            end
        end
    end]]--
    
    
--[[    registerEquipmentGroup({name = "conduit",type = "conduit",threshhold = 1.0})
    registerEquipmentGroup({name = "burner" ,type = "fuelled",threshhold = 0.75})
    registerEquipmentGroup({name = "fusion" ,type = "fuelled",threshhold = 0.5})

    registerPrototype({name = "conduit",type = "conduit"},{name = "semiconductor-conduit-equipment"    ,power =  40 * 1000},"equipment")
    registerPrototype({name = "conduit",type = "conduit"},{name = "superconductor-conduit-equipment"   ,power = 720 * 1000},"equipment")
    registerPrototype({name = "burner" ,type = "fuelled"},{name = "engine-equipment"                   ,power = 100 * 1000},"equipment")
    registerPrototype({name = "fusion" ,type = "fuelled"},{name = "fusion-reactor-equipment"           ,power = 960 * 1000},"equipment")
                    
    registerPrototype({name = "burner" ,type = "fuelled"},{name = "solid-fuel"  ,power = 25     * 1000 * 1000},"fuel")
    registerPrototype({name = "burner" ,type = "fuelled"},{name = "coal"        ,power = 8.     * 1000 * 1000},"fuel")
    registerPrototype({name = "burner" ,type = "fuelled"},{name = "raw-wood"    ,power = 4.     * 1000 * 1000},"fuel")
    registerPrototype({name = "fusion" ,type = "fuelled"},{name = "alien-fuel"  ,power = 200.   * 1000 * 1000},"fuel")

end]]--

function ticker() -- run once per tickRate number of gameticks.
    if (game.tick % RanaMods.ModularArmor.config.tickRate) == 0 then
		--tick()
        
	else
	end
    --[[if (game.tick %  60) == 0 then
        refresh_equipment()
    end]]--
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
    
    --[[if not id.units.pole then
        id.units.pole = global.surface.create_entity{name = "electric-pole-dummy", position = positionz, force=game.forces.player}
        id.units.pole.destructible = false
    else
        id.units.pole.teleport(positionz)
    end
    
    if not id.units.solar then
        id.units.solar = global.surface.create_entity{name = "solar-panel-dummy", position = positionz, force=game.forces.player}
        id.units.solar.destructible = false
    else
        id.units.solar.teleport(positionz)
    end]]--
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
        --[[if id.units.pole then
            id.units.pole.destroy()
            id.units.pole = nil
        else
            -- Already gone
        end
        if id.units.solar then
            id.units.solar.destroy()
            id.units.solar = nil
        else
          -- Already gone
        end]]--
    else
        -- Already deleted.
    end
end

function tick()
	local shouldKeepTicking
    local thisPlayer = nil
    local players = game.players
    --globalPrint("tick")
    --shouldKeepTicking = true -- Due to lack of any alternate method of detecting player's armor state, we have to always tick.

    
    for x=1, #players do
        thisPlayer = players[x]
        if (thisPlayer.connected) then
            if (thisPlayer.character) then
                --game.getplayer(1).print(x..' '..player)
                
                --if not global.modularArmor[x] then
                --    global.modularArmor[x] = {}
                --end
                local modularArmor = global.modularArmor[x]
                
                if (not modularArmor) then
                    
                    modularArmor = {} -- ensure player has data attached
                    --modularArmor.storedFuel = {["steam"] = 0, ["fusion"] = 0}
                    global.modularArmor[x] = modularArmor
                    
                    
                end
                
                if (not modularArmor.shieldData) then
                    modularArmor.shieldData = {}
                    modularArmor.shieldData.previousShield = 0
                    modularArmor.shieldData.lastDamage = 0
                    --modularArmor.shieldData.direction = 0
                    --modularArmor.shieldData.lastSFX = 0
                end
                
                
                local armor = thisPlayer.get_inventory(defines.inventory.player_armor)[1] -- Check for armour presence.
                
                if (armor.valid_for_read) then
                    
                    if (armor.has_grid) then -- Check for grid existence.
                        local grid = armor.grid
                        
                        --tickDummies(modularArmor,thisPlayer.character.surface,thisPlayer.character.position)-- validate, create, and move dummy units.
                        
                        
                        
                        --local transferRate = 0 -- Rate of transfer from external network to armor.
                    
                        --transferRate = transferRate + ArmorTransferRatePerGridSize*grid.width*grid.height
                        
               
                        --local energy = 0 -- Total energy and energy capacity
                        --local energyCap = 0 -- need smallest fraction count as well. Essentially, if any of them have less than 50% or 90%, activate fusion and steam respectively.
                        --local hasBattery = false -- Due to lack of a good energy distrubution system, I only limit production so long as you have a battery. Otherwise, things near the end of the list don't get any energy.
                        -- Disabled, since power distribution percentages of 98 and 99% don't really have problems anymore. You would need 50 mini-shields, which wont happen
                        --local shieldHealth = 0 -- Total shield and shield capacity for auto-balancing.
                        --local shieldCap = 0
                        --[[for x,equipment in ipairs(grid.equipment) do -- Loop through all equipment.
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
							gloablPrint(prototype.energy_source.type)
							if (prototype.energy_source.type == "rana-conduit")
							
								--transferRate = transferRate + (prototype.energy_production-equipment.)
							end
							
                        end]]--
                        
                        
                        
                        --[[local shieldFraction = grid.shield / grid.max_shield
                        
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
                            
                        end]]--
                        
                        --[[local energyWanted = energyCap-energy
                        
                        local transferRate = math.min(transferRate,energyWanted) -- We cant transfer energy without space to put it into
                        
                        
                        --local accumulatorEnergy = 0*conversionAntiRatio -- Temporarily removed.
                        local accumulatorEnergy = (modularArmor.units.accumulator.energy - modularArmor.previousEnergy)--*conversionAntiRatio -- How much energy was accumulated since last tick
                        --globalPrint("Accumulator "..accumulatorEnergy)
                        local energyToAdd = math.min(transferRate,accumulatorEnergy) -- Accumulated energy, or transfer wanted, whichever is lower.
                        local newEnergy = energy+energyToAdd
                        local storageRatio = newEnergy/energyCap
                        
                        accumulatorEnergy = accumulatorEnergy - energyToAdd -- Remove ]]--
                        -- SFX
                        -- if energyToAdd >= 10000 and game.tick%60 == 0 then
                        --    global.surface.create_entity{name = "conduit-sparks", position = thisPlayer.character.position, force=game.forces.neutral}
                        --end
                        --globalPrint("Accumulator -- "..accumulatorEnergy)
                        --global.surface.create_entity{name = "smoke-fast", position = thisPlayer.character.position, force=game.forces.neutral} 
                        
                       
                        
                        -- I have energy to add, Energy Cap, and current energy.
                        -- I want to give amount proportional to amount missing to each elements. Ones with less get a higher fraction.
                        -- The amount I have available needs to be split into fractions of amount missing overall.
                        -- For each point missing from an element, add energyFraction to it.
                        -- Calc extra as well, and if it is greater than like 10%, feed into accumulator for next tick.
                        
                        
                        --globalPrint("energyFraction"..energyFraction)
                        --globalPrint("energyToAdd"..energyToAdd)
                        
                        --globalPrint("energySpent"..energySpent)
                        --shieldHealth = 0
                        --[[for x,equipment in ipairs(grid.equipment) do -- Basic Setup. Distribute as much to first in line, remainder to next, and next, till you run out.
                            if (equipment.max_energy ~= 0 and energyToAdd > 0) then          -- Poor Distribution method.
                                local difference = equipment.max_energy - equipment.energy
                                if (energyToAdd > difference) then
                                    energyToAdd = energyToAdd - difference
                                    equipment.energy = equipment.max_energy
                                else
                                    equipment.energy = equipment.energy + energyToAdd
                                    energyToAdd = 0
                                    --break -- Removed since it interferes with shield.
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
                        ]]--
                        
                        
                    else
                        killDummies(modularArmor)
                    end
                else
                    killDummies(modularArmor)
                end
            else
                -- No player
                -- killDummies(modularArmor)
            end
        end
            
    end
    
	--[[if (not shouldKeepTicking) then
		global.ticking = nil
		script.onevent(defines.events.ontick, nil)
	end]]--
end