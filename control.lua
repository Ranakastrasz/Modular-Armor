require "defines"
require "config"
require 'libs/EvoGUI'

--[[
    This module handles the gameloop alteration, allowing conduit modules in power armor grid to tranfer energy between your power grid and your armor.

]]--

--[[
Charging Module Icon
Artist: Treetog ArtWork (Available for custom work)
Iconset: Junior Icons (146 icons)
License: Free for personal desktop use only.
Commercial usage: Not allowed
]]--

--[[          Gen         , Size, Gen/size
    Conduit :  400kw (5  ),  1x1, 400  kw                    400
    Solar 1 :  325kw (7.5),  3x1, 125  kw  *0.7  87.5kw      87.5
    Solar 2 : 1450kw (29.),  5x2, ~145kw *0.7 101.5kw        1450 
    Burner  :  500kw (10),   2x2, 125  kw                     500
    Fusion  : 5000Mw(100),   4x4, 312.5kw                    5000
    
    Bob's mod
    Fusion2  :  7.500Gw(150),  4x4, 468.75kw                    
    Fusion3  : 12.500Gw(225),  4x4, 781.25kw                    
    Fusion4  : 20.000Gw(300),  4x4, 1250 kw         

    Solar 1 :  125kw  (2.5 ),  1x1, 125  kw  *0.7  87.5kw      87.5
    Solar 2 :  200kw  (4.0 ),  1x1, 200  kw  *0.7 140. kw     140
    Solar 3 :  325kw  (6.5 ),  1x1, 325  kw  *0.7 227.5kw     227.5
    Solar 4 :  500kw (10   ),  1x1, 500  kw  *0.7 350. kw     350   
    
           Energy , duration
    Wood  :  4 MJ ,  40
    Coal  :  8 MJ ,  80
    Fuel  : 25 MJ , 250

    Fusion: 112.5 MJ, 120
    
    Set Burner to Blue tier??
]]--
--[[
    Figure out if you can access energy network with the get network command thinggy.
    Alternately, do aura search, steal power from accumulators and roboports. /Done
    
    Add command to disable conduit mechanics.
    -Shield pulse visial /Done
    -Better Energy Distribution
    -Sheld autobalance /Done
    -Boost batteries. Add higher tier,larger battery(s) /Done
    -Finish tech fixing /Done
    -Add GUI display for fuel.
    -Add custom fuel slot.
    -Method to discharge energy into network?
]]--



--[[priorities = 
{
    {
        type = "input",
        {[1] = "primary-input" },
        {[2] = "secondary-input" },
    },
    {
        type = "output",
        {[1] = "primary-output"},
        {[2] = "secondary-output"},
    }
}]]--

--[[remote.addinterface("ModularArmor", {
    reset = function()
		global.ticking = nil
        
        --global.modularArmor = {}
    end
})]]--
if not data then
    data = {}
end
function loadData()

    if not data.loaded then
        data.loaded = true
    else
        return
    end
    
    if not data.fuelValues then
        data.fuelValues = {}
    end

    if not data.conduitRates then
        data.conduitRates = {}
    end

    data.ConduitTransferRatePerEquipment = 400. * 1000 * RanaMods.ModularArmor.config.secondsPerTick

    data.fuelValues =
    {
        [1] = {
            type = "engine-equipment",
            name = "burner",
            power = 500. * 1000 * RanaMods.ModularArmor.config.secondsPerTick,       -- Production per tick at max rate
            threshhold = 0.99,                      -- Power must be below this value for this type of generator to run
            {[1] = {"solid-fuel", 25.*1000*1000*RanaMods.ModularArmor.config.fuelCoef}}, -- Value of each fuel type.
            {[2] = {"coal"      ,  8.*1000*1000*RanaMods.ModularArmor.config.fuelCoef}}, 
            {[3] = {"raw-wood"  ,  4.*1000*1000*RanaMods.ModularArmor.config.fuelCoef}},
        },
        [2] = {
            type = "fusion-reactor-equipment",
            name = "fusion",
            threshhold = 0.98,
            power = 5000. * 1000 * RanaMods.ModularArmor.config.secondsPerTick,
            {[1] = {"alien-fuel", 100.*1000*1000*RanaMods.ModularArmor.config.fuelCoef}},
        }
    }
end

function verifySettings()
	if (RanaMods.ModularArmor.config.tickRate < 0) then
		RanaMods.ModularArmor.config.tickRate = 1
		throwError("Tick rate must be >= 0.")
	end
end

function onload()  -- this function 
       -- globalPrint("onLoad")
	if (global.loaded == nil) then
		global.loaded = true
       -- globalPrint("loaded")
        
		verifySettings()
	end
    if (not global.surface) then
        global.surface = game.surfaces['nauvis']
    end
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
    script.on_event(defines.events.on_tick, ticker)
end

script.on_init(onload)
script.on_load(onload)


function globalPrint(msg)
  local players = game.players
  if RanaMods.ModularArmor.config.Debug then
      for i=1, #players do
        players[i].print(msg)
      end
  end
end


function tableIsEmpty(t)
	if (t) then
		for k in pairs(t) do
			return false
		end
	end
	return true
end

function ticker() -- run once per tickRate number of gameticks.
    if (game.tick % RanaMods.ModularArmor.config.tickRate) == 0 then
		tick()
	else
	end
end

function tickDummies(id,positionz)

    if not id.units then
        id.units = {}
    else
        -- Already exists.
    end
    if not id.units.accumulator then
        id.units.accumulator = global.surface.create_entity{name = "laser-turret-dummy", position = positionz, force=game.forces.player}
        id.units.accumulator.energy = RanaMods.ModularArmor.config.accumulatorEnergyCap -- initialize energy levels
        id.previousEnergy = id.units.accumulator.energy -- and previous energy level from last tick
        id.units.accumulator.destructible = false -- Make dummy invulnerable.
    else
        id.units.accumulator.teleport(positionz) -- Ensure that the power drain dummy is always at the player's position.
    end
    
    if not id.units.pole then
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
    end
end
function killDummies(id)
    if id.units then
        if id.units.accumulator then
            id.units.accumulator.destroy()
            id.units.accumulator = nil
        else
            -- Already gone
        end
        if id.units.pole then
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
    shouldKeepTicking = true -- Due to lack of any alternate method of detecting player's armor state, we have to always tick.
    
    if not data.loaded then
        loadData()
    end
    for i=1, #players do
        thisPlayer = players[i]
        if (thisPlayer.connected) then
            if (thisPlayer.character) then
                --game.getplayer(1).print(i..' '..player)
                
                --if not global.modularArmor[i] then
                --    global.modularArmor[i] = {}
                --end
                local modularArmor = global.modularArmor[i]
                
                if (not modularArmor) then
                    
                    modularArmor = {} -- ensure player has data attached
                    --modularArmor.storedFuel = {["steam"] = 0, ["fusion"] = 0}
                    global.modularArmor[i] = modularArmor
                    
                    --[[if (RanaMods.ModularArmor.config.Debug == true) then
                
                        game.always_day=true -- test mode stuff
                        thisPlayer.insert{name="basic-grenade",count=50}
                        thisPlayer.insert{name="energy-shield-basic-equipment",count=20}
                        thisPlayer.insert{name="energy-shield-equipment",count=20}
                        thisPlayer.insert{name="energy-shield-mk2-equipment",count=10}
                        --thisPlayer.insert{name="energy-shield-module-equipment",count=10}
                        --thisPlayer.insert{name="energy-shield-core-equipment",count=5}
                        
                        thisPlayer.insert{name="power-conduit-equipment",count=40}
                        thisPlayer.insert{name="engine-equipment",count=10}
                        thisPlayer.insert{name="fusion-reactor-equipment",count=10}
                        --thisPlayer.insert{name="power-conduit-core-equipment",count=5}
                        
                        thisPlayer.insert{name="coal",count=50}
                        thisPlayer.insert{name="solid-fuel",count=50}
                        thisPlayer.insert{name="alien-fuel",count=50}

                        --thisPlayer.insert{name="solar-panel-equipment-node",count=20}
                        thisPlayer.insert{name="solar-panel-equipment",count=20}
                        thisPlayer.insert{name="solar-panel-equipment-mk2",count=10}
                        thisPlayer.insert{name="basic-actuator-equipment",count=20}
                        thisPlayer.insert{name="basic-exoskeleton-equipment",count=20}

                        thisPlayer.insert{name="battery-equipment",count=5}
                        thisPlayer.insert{name="battery-mk2-equipment",count=5}
                        thisPlayer.insert{name="battery-mk3-equipment",count=5}
                        thisPlayer.insert{name="battery-mk4-equipment",count=5}
                        thisPlayer.insert{name="power-armor-mk2",count=1}
                        thisPlayer.insert{name="power-armor",count=1}
                        thisPlayer.insert{name="basic-modular-armor",count=1}
                        
                        
                        thisPlayer.insert{name="basic-laser-defense-equipment",count=5}
                        thisPlayer.insert{name="basic-electric-discharge-defense-equipment",count=5}
                        thisPlayer.insert{name="basic-electric-discharge-defense-remote",count=1}
                        
                        
                        thisPlayer.insert{name="small-electric-pole",count=50}
                        thisPlayer.insert{name="solar-panel",count=50}
                        thisPlayer.insert{name="basic-accumulator",count=50}
                        thisPlayer.insert{name="basic-mining-drill",count=50}
                    end]]--
                    
                end
                if (not modularArmor.storedFuel) then
                    modularArmor.storedFuel = {}
                    for i,fuelVal in ipairs(data.fuelValues) do
                        modularArmor.storedFuel[i] = 1
                    end
                end
                
                -- Removed till I can figure out how to fix the entity.
                --[[if modularArmor.units and modularArmor.units.name == "modular-accumulator-dummy" then
                    modularArmor.units.destroy()
                end
                if modularArmor.units == nil then
                    modularArmor.units = {}
                end]]--
                -- Ensure dummies exist.
                --[[]]--
                
                local armor = thisPlayer.get_inventory(defines.inventory.player_armor)[1] -- Check for armour presence.
                
                -- /c ((game.players[1].get_inventory(defines.inventory.player_armor)[1]).grid).put{equipment = "battery-equipment"}
                -- /c ((game.players[1].get_inventory(defines.inventory.player_armor)[1]).grid).put{equipment = game.players[1].insert{name = "battery-equipment",count=1}}
                
                if (armor.valid_for_read) then
                    
                    if (armor.has_grid) then -- Check for grid existence.
                        local grid = armor.grid
                        
                        tickDummies(modularArmor,thisPlayer.character.position)-- validate, create, and move dummy units.
                        
                        
                        
                        local transferRate = 0 -- Rate of transfer from external network to armor.
                    
                        --transferRate = transferRate + ArmorTransferRatePerGridSize*grid.width*grid.height
                        
                        local fuelRate = {}
                    
                        local energy = 0 -- Total energy and energy capacity
                        local energyCap = 0 -- need smallest fraction count as well. Essentially, if any of them have less than 50% or 90%, activate fusion and steam respectively.
                        --local hasBattery = false -- Due to lack of a good energy distrubution system, I only limit production so long as you have a battery. Otherwise, things near the end of the list don't get any energy.
                        -- Disabled, since power distribution percentages of 98 and 99% don't really have problems anymore. You would need 50 mini-shields, which wont happen
                        local shieldHealth = 0 -- Total shield and shield capacity for auto-balancing.
                        local shieldCap = 0
                        for i,equipment in ipairs(grid.equipment) do -- Loop through all equipment.
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
                            
                            for i,fuelVal in ipairs(data.fuelValues) do
                                if (equipment.name == fuelVal.type) then
                                --globalPrint(equipment.name.." ? "..fuelType)
                                    if not fuelRate[i] then
                                        fuelRate[i] = fuelVal.power
                                    else
                                        fuelRate[i] = fuelRate[i] + fuelVal.power
                                    end
                                else
                                    
                                end
                            end
                            
                                
                            if (equipment.name == "power-conduit-equipment") then -- Also count each conduit module.
                                transferRate = transferRate + data.ConduitTransferRatePerEquipment
                            end
                        end
                        
                        local shieldFraction = shieldHealth/shieldCap
                        local energyWanted = energyCap-energy
                        local transferRate = math.min(transferRate,energyWanted) -- We cant transfer energy without space to put it into
                        
                        --local accumulatorEnergy = 0*conversionAntiRatio -- Temporarily removed.
                        local accumulatorEnergy = (modularArmor.units.accumulator.energy - modularArmor.previousEnergy)--*conversionAntiRatio -- How much energy was accumulated since last tick
                        --globalPrint("Accumulator "..accumulatorEnergy)
                        local energyToAdd = math.min(transferRate,accumulatorEnergy) -- Accumulated energy, or transfer wanted, whichever is lower.
                        local newEnergy = energy+energyToAdd
                        local storageRatio = newEnergy/energyCap
                        
                        accumulatorEnergy = accumulatorEnergy - energyToAdd -- Remove 
                        --globalPrint("Accumulator -- "..accumulatorEnergy)

                        for i,fuelVal in ipairs(data.fuelValues) do -- Currently, Fusion power is being used when steam is supposed to be.
                           --globalPrint("detected Generator "..(fuelRate.fuelType)..(fuelType))
                            if fuelRate[i] and fuelRate[i] > 0.0 then
                                --globalPrint("detected Generator "..fuelRate.fuelType..fuelType)
                                -- This type exists
                                local threshhold = energyCap -- How much power this generator is allowed to bring you up to.
                                --if hasBattery then
                                    threshhold = threshhold * fuelVal.threshhold -- Without a battery, you cannot regulate energy production.
                                --else
                                    
                                --end
                                local energyWanted = threshhold - newEnergy -- How much power we want to generate
                                energyWanted = math.max(energyWanted,0) -- Can't request negative power
                                energyWanted = math.min(energyWanted,fuelRate[i]) -- Can't make more power than the engines can support
                                local energyToGenerate = 0
                                
                                --globalPrint("Stored "..modularArmor.storedFuel[i]..fuelType)
                                --globalPrint("Wanted "..energyWanted)
                                if (modularArmor.storedFuel[i] < energyWanted) then
                                    -- Check for fuel. If available, consume. If not, spend what you have
                                    local mainInventory = thisPlayer.get_inventory(defines.inventory.player_main)
                                    local validFuel = nil
                                    for i,fuel in ipairs(fuelVal) do
                                        if (mainInventory.get_item_count(fuel[i][1]) > 0) then
                                            -- Got some
                                            validFuel = fuel[i]
                                            break
                                        else
                                            -- No luck, skip it
                                        end
                                        --globalPrint(fuel[i][1].." "..mainInventory.get_item_count(fuel[i][1]))
                                    end
                                    if (validFuel) then
                                        mainInventory.remove{name = validFuel[1], count = 1}
                                        modularArmor.storedFuel[i] = modularArmor.storedFuel[i] + validFuel[2]
                                        --surface.create_entity{name="flying-text", position=thisPlayer.character.position, text=("-1 "..validFuel[1]), color={r=1,g=1,b=1}}
                                        --globalPrint(validFuel[1].." "..modularArmor.storedFuel[i])
                                    else
                                        if RanaMods.ModularArmor.config.LowFuelMessage then
                                            if (game.tick%RanaMods.ModularArmor.config.ticksPerSecond == 0) then
                                                global.surface.create_entity{name="flying-text", position=thisPlayer.character.position, text=("No "..(fuelVal.name).." fuel"), color={r=1,g=0.25,b=0.25}}

                                            else
                                              
                                            end
                                        end

                                        -- Out of fuel
                                        --globalPrint("No fuel")
                                    end
                                    
                                    
                                else
                                    -- Have enough fuel already.
                                end
                                energyToGenerate = math.min(modularArmor.storedFuel[i],energyWanted)
                                
                                modularArmor.storedFuel[i] = modularArmor.storedFuel[i] - energyToGenerate
                                
                                    
                                energyToAdd = energyToAdd + energyToGenerate
                                
                                --global.surface.pollute(thisPlayer.character.position, energyToGenerate*RanaMods.ModularArmor.config.pollutionCoef)
                                
                              
                                    
                                --end
                            else
                                -- No such generator.
                            end
                        end
                        
                        -- I have energy to add, Energy Cap, and current energy.
                        -- I want to give amount proportional to amount missing to each elements. Ones with less get a higher fraction.
                        -- The amount I have available needs to be split into fractions of amount missing overall.
                        -- For each point missing from an element, add energyFraction to it.
                        -- Calc extra as well, and if it is greater than like 10%, feed into accumulator for next tick.
                        
                        
                        --globalPrint("energyFraction"..energyFraction)
                        --globalPrint("energyToAdd"..energyToAdd)
                        
                        --globalPrint("energySpent"..energySpent)
                        shieldHealth = 0
                        for i,equipment in ipairs(grid.equipment) do -- Basic Setup. Distribute as much to first in line, remainder to next, and next, till you run out.
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
                                shieldHealth = shieldHealth + equipment.shield
                                --equipment.shield = equipment.shield - (equipment.max_shield*ShieldDecayPerTick)
                            else -- Ideally, I want to send power from high efficiency ones to lower efficiency ones. That minimizes power consumption.
                                
                            end
                        end
                        --globalPrint("Shield Initial: "..shieldInitial)
                        --globalPrint("Shield After: "..shieldHealth)
                        --globalPrint("Shield Diff: "..shieldHealth-shieldInitial)
                        
                               
                        --globalPrint("accumulatorEnergy "..accumulatorEnergy)
                        --globalPrint("transferRate "..transferRate)
                        --globalPrint("accumulatorEnergyCap "..accumulatorEnergyCap)
                        
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
                -- killDummies(modularArmor)
            end
        end
            
    end
    
	if (not shouldKeepTicking) then
		global.ticking = nil
		script.onevent(defines.events.ontick, nil)
	end
end