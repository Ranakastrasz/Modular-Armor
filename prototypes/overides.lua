require("config")

function modValue(str) -- Multiply power values by powerCoef
    --str = "101kw"
    pos = string.find(str,"%a")-1
    --io.write(pos.."\n")
    subPre = string.sub(str,1,pos)
    subSuf = string.sub(str,(pos)-string.len(str))
    --io.write(string.len(str).."\n")
    val = tonumber(subPre)
    val = val*config.powerCoef
    subPre = tostring(val)
    str = subPre..subSuf
    --io.write(subPre.."\n")
    --io.write(subSuf.."\n")
    --io.write(str.."\n")
    return str
end

function modEquipment(equipmentType)
    for i, equipment in pairs (data.raw[equipmentType]) do
        
        if equipment.energy_source then
            energySource = equipment.energy_source
            if energySource.buffer_capacity then
                energySource.buffer_capacity = modValue(energySource.buffer_capacity)
            end
            if energySource.input_flow_limit then
                energySource.input_flow_limit = modValue(energySource.input_flow_limit)
            end
            if energySource.output_flow_limit then
                energySource.output_flow_limit = modValue(energySource.output_flow_limit)
            end
        end
        if equipment.energy_per_shield then
            equipment.energy_per_shield = modValue(equipment.energy_per_shield)
        end
        if equipment.energy_consumption then
            equipment.energy_consumption = modValue(equipment.energy_consumption)
        end
        if equipment.power then
            equipment.power = modValue(equipment.power)
        end
        if equipment.attack_parameters and equipment.attack_parameters.ammo_type and equipment.attack_parameters.ammo_type.energy_consumption then        equipment.attack_parameters.ammo_type.energy_consumption = modValue(equipment.attack_parameters.ammo_type.energy_consumption)

        end
        
    end
end

modEquipment("energy-shield-equipment")
modEquipment("solar-panel-equipment")
modEquipment("generator-equipment")
modEquipment("movement-bonus-equipment")
modEquipment("battery-equipment")
modEquipment("night-vision-equipment")
modEquipment("active-defense-equipment")
--modEquipment("roboport-equipment")

--[[for i, equipment in pairs(data.raw["night-vision-equipment"]) do
    equipment.energy_source.buffer_capacity = modValue(equipment.energy_source.buffer_capacity)
    equipment.energy_source.input_flow_limit = modValue(equipment.energy_source.input_flow_limit)
    equipment.energy_input = modValue(equipment.energy_input)
end]]--
for km, vm in pairs(data.raw.module) do
    if vm.name:find("productivity%-module") and vm.limitation then
        table.insert(vm.limitation, "alien-cable")
        table.insert(vm.limitation, "alien-fuel")
    end
end

