require "defines"
require "config"

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

--[[          Gen , Size, Gen/size
    Conduit :  250kw,  1x1, 150  kw                    400
    Solar 1 :   75kw,  1x1,  75  kw  *0.7  52.5kw      115
    Solar 2 : 1000kw,  3x3, 111.1kw *0.7 77.7kw        1350? 
    Burner  :  500kw,  2x2, 125  kw                     500
    Fusion  : 5000Mw,  4x4, 312.5kw                    4800
    
    
           Energy , duration
    Wood  :  4 MJ ,  40
    Coal  :  8 MJ ,  80
    Fuel  : 25 MJ , 250

    Fusion: 112.5 MJ, 120
    
    Set Burner to Blue tier??
]]--
--[[
    Figure out if you can access energy network with the get network command thinggy.
    Alternately, do aura search, steal power from accumulators and roboports.
    
    Add command to disable conduit mechanics.
    -Shield pulse visial
    -Better Energy Distribution
    -Sheld autobalance
    -Boost batteries. Add higher tier,larger battery(s) /Done
    -Finish tech fixing
    -Add GUI display for fuel.
    -Add custom fuel slot.
    -Method to discharge energy into network?
    -Better energy distribution
    -Shield autobalance
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


function verifySettings()
	if (config.tickRate < 0) then
		config.tickRate = 1
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
    script.on_event(defines.events.on_tick, ticker)
end

script.on_init(onload)
script.on_load(onload)


function globalPrint(msg)
  local players = game.players
  if config.Debug then
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
    if (game.tick % config.tickRate) == 0 then
		tick()
	else
	end
end
function sfxShield(id,positionz)
    global.surface.create_entity{name="shield-effect-"..id, position={positionz.x-0.0, positionz.y+0.3}}

end

function tickDummies(id,positionz)

    if not id.units then
        id.units = {}
    else
        -- Already exists.
    end
    if not id.units.accumulator then
        id.units.accumulator = global.surface.create_entity{name = "laser-turret-dummy", position = positionz, force=game.forces.player}
        id.units.accumulator.energy = config.accumulatorEnergyCap -- initialize energy levels
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
                    
                    --[[if (config.Debug == true) then
                
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
                    for i,fuelVal in ipairs(config.fuelValues) do
                        modularArmor.storedFuel[i] = 1
                    end
                end
                if (not modularArmor.shieldSFX) then
                    modularArmor.shieldSFX = {}
                    modularArmor.shieldSFX.previousShield = 0
                    modularArmor.shieldSFX.lastDamage = 0
                    modularArmor.shieldSFX.direction = 0
                    modularArmor.shieldSFX.lastSFX = 0
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
                            
                            for i,fuelVal in ipairs(config.fuelValues) do
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
                                transferRate = transferRate + config.ConduitTransferRatePerEquipment
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

                        for i,fuelVal in ipairs(config.fuelValues) do -- Currently, Fusion power is being used when steam is supposed to be.
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
                                        if config.LowFuelMessage then
                                            if (game.tick%config.ticksPerSecond == 0) then
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
                                
                                --global.surface.pollute(thisPlayer.character.position, energyToGenerate*config.pollutionCoef)
                                
                              
                                    
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
                        --if game.tick==0 then
                        if config.ShieldAnimation then
                            
                            if shieldCap > 0 then
                                -- Always slide one tile per tick. Unless taking sudden damage, where you start at 14, occulate within range.
                                -- Charging. Always show 1-4. When finished, go up through to 20 then stop.
                                -- Taking Damage. 5-95% decending, occulate between 5 and 14. After 2 seconds (120 from last damage) go up to 20.
                                -- 
                                
                                
                                local currentSFX = 0
                                if shieldHealth < modularArmor.shieldSFX.previousShield then
                                    -- Took damage last tick.
                                    modularArmor.shieldSFX.lastDamage = 0
                                else
                                    -- Not taking damage this tick. Might have taken damage previously however.
                                    
                                end
                                if modularArmor.shieldSFX.lastDamage < 10 then
                                    -- Still showing damage taken
                                    -- Occulate between 5 and 14.
                                    -- Clamp between 5 and 14, and reverse.
                                    if (modularArmor.shieldSFX.lastSFX <= 5) then
                                        currentSFX = 6
                                        modularArmor.shieldSFX.direction = 1
                                    else
                                        if modularArmor.shieldSFX.lastSFX >= 14 then
                                            currentSFX = 13
                                            modularArmor.shieldSFX.direction = -1
                                        else
                                            -- Already in range.
                                            currentSFX = modularArmor.shieldSFX.lastSFX + modularArmor.shieldSFX.direction
                                        end
                                    end
                                    
                                else
                                    -- Damage no longer being taken.
                                    if shieldHealth < shieldCap then
                                        -- Show 1-4 regen
                                        -- Clamp between 1 and 4, and reverse.
                                        -- Instead of 4, use 4 + 1 per 10%. Caps at 14 when it finishes.
                                        if (modularArmor.shieldSFX.lastSFX <= 1) then
                                            currentSFX = 2
                                            modularArmor.shieldSFX.direction = 1
                                        else
                                            if modularArmor.shieldSFX.lastSFX >= (1+(shieldFraction*5)) then
                                                --currentSFX = 3
                                                modularArmor.shieldSFX.direction = -1
                                            else
                                                -- Already in range.
                                            end
                                        end
                                        currentSFX = modularArmor.shieldSFX.lastSFX + modularArmor.shieldSFX.direction
                                    else
                                        if modularArmor.shieldSFX.lastSFX ~= 0 and modularArmor.shieldSFX.lastSFX < 20 then
                                            currentSFX = modularArmor.shieldSFX.lastSFX + 1
                                        end
                                        -- at 100%, go up to 20 and end.
                                    end
                                end
                                --globalPrint("lastSFX: "..modularArmor.shieldSFX.lastSFX)
                                --globalPrint("currentSFX: "..currentSFX)
                                if currentSFX ~= 0 then
                                    
                                    sfxShield(math.floor(currentSFX),thisPlayer.character.position)
                                else
                                    
                                end
                                
                                modularArmor.shieldSFX.previousShield = shieldHealth
                                modularArmor.shieldSFX.lastDamage = modularArmor.shieldSFX.lastDamage+1
                                --modularArmor.shieldSFX.direction = 0
                                modularArmor.shieldSFX.lastSFX = currentSFX
                            end
                        end
                        --end
                        
                               
                        --globalPrint("accumulatorEnergy "..accumulatorEnergy)
                        --globalPrint("transferRate "..transferRate)
                        --globalPrint("accumulatorEnergyCap "..accumulatorEnergyCap)
                        
                        modularArmor.units.accumulator.energy = config.accumulatorEnergyCap - transferRate--*conversionRatio
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