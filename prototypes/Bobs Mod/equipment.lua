data:extend(
{
  {
    type = "energy-shield-equipment",
    name = "energy-shield-basic-equipment",
    sprite =
    {
      filename = "__Modular-Armor__/graphics/equipment/energy-shield-equipment-basic.png",
      width = 32,
      height = 32,
      priority = "medium"
    },
    shape =
    {
      width = 1,
      height = 1,
      type = "full"
    },
    max_shield_value = 5,
    energy_source =
    {
      type = "electric",
      buffer_capacity =  "1000J",
      input_flow_limit = "1500W",
      usage_priority = "primary-input"
    },
    energy_per_shield = "1kJ"
  },

  {
    type = "energy-shield-equipment",
    name = "energy-shield-mk2-equipment",
    sprite =
    {
      filename = "__Modular-Armor__/graphics/equipment/energy-shield-mk2-equipment-3x3.png",
      width = 96,
      height = 96,
      priority = "medium"
    },
    shape =
    {
      width = 3,
      height = 3,
      type = "full"
    },
    max_shield_value = 350, -- 150
    energy_source =
    {
      type = "electric",
      buffer_capacity = "40kJ", -- 18kj * 2.25
      input_flow_limit = "80kW", -- 36kw * 2.25
      usage_priority = "primary-input"
    },
    energy_per_shield = "3kJ" -- 3kj
  },
  --[[{
    type = "solar-panel-equipment",
    name = "solar-panel-equipment-mk2",
    sprite = 
    {
      filename = "__Modular-Armor__/graphics/equipment/solar-panel-mk2-equipment.png",
      width = 160,
      height = 32,
      priority = "medium"
    },
    shape =
    {
      width = 5,
      height = 1,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    power = "14.5kW"
  },]]--
  {
    type = "generator-equipment",
    name = "power-conduit-equipment",
    sprite = 
    {
      filename = "__Modular-Armor__/graphics/equipment/power-conduit-equipment.png",
      width = 32,
      height = 32,
      priority = "medium"
    },
    shape =
    {
      width = 1,
      height = 1,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    power = "0W"
  },
  {
    type = "generator-equipment",
    name = "engine-equipment",
    sprite = 
    {
      filename = "__Modular-Armor__/graphics/equipment/engine-equipment.png",
      width = 64,
      height = 64,
      priority = "medium"
    },
    shape =
    {
      width = 2,
      height = 2,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    power = "0W"
  },
  {
    type = "movement-bonus-equipment",
    name = "basic-actuator-equipment",
    sprite = 
    {            
      filename = "__Modular-Armor__/graphics/equipment/basic-actuator-equipment.png",
      width = 32,
      height = 64,
      priority = "medium"
    },
    shape =
    {
      width = 1,
      height = 2,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_consumption = "2.5kW",
    movement_bonus = 0.05
  },
  {
    type = "battery-equipment",
    name = "battery-equipment",
    sprite =
    {
      filename = "__Modular-Armor__/graphics/equipment/battery-mk1-equipment.png",
      width = 32,
      height = 32,
      priority = "medium"
    },
    shape =
    {
      width = 1,
      height = 1,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = ".2MJ",
      input_flow_limit = "2MW",
      output_flow_limit = "2MW",
      usage_priority = "terciary"
    }
  },
  {
    type = "battery-equipment",
    name = "battery-mk2-equipment",
    sprite =
    {
      filename = "__Modular-Armor__/graphics/equipment/battery-mk2-equipment.png",
      width = 32,
      height = 64,
      priority = "medium"
    },
    shape =
    {
      width = 1,
      height = 2,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = ".5MJ",
      input_flow_limit = "5MW",
      output_flow_limit = "5MW",
      usage_priority = "terciary"
    }
  },
  {
    type = "battery-equipment",
    name = "battery-mk3-equipment",
    sprite =
    {
      filename = "__Modular-Armor__/graphics/equipment/battery-mk3-equipment.png",
      width = 64,
      height = 64,
      priority = "medium"
    },
    shape =
    {
      width = 2,
      height = 2,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "1.2MJ",
      input_flow_limit = "12MW",
      output_flow_limit = "12MW",
      usage_priority = "terciary"
    }
  },
  {
    type = "battery-equipment",
    name = "battery-mk4-equipment",
    sprite =
    {
      filename = "__Modular-Armor__/graphics/equipment/battery-mk4-equipment.png",
      width = 64,
      height = 128,
      priority = "medium"
    },
    shape =
    {
      width = 2,
      height = 4,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "3MJ",
      input_flow_limit = "30MW",
      output_flow_limit = "30MW",
      usage_priority = "terciary"
    }
  }
  
}
)
----------
local thisEquipment
--[[thisEquipment = data.raw["night-vision-equipment"]["night-vision-equipment"]
thisEquipment.energy_source =
{
  type = "electric",
  buffer_capacity = "600kJ",
  input_flow_limit = "1200kW",
  usage_priority = "primary-input"
}
thisEquipment.energy_input = "50kW"]]--

--[[thisEquipment = data.raw["energy-shield-equipment"]["energy-shield-equipment"]
thisEquipment.energy_source =
{
    type = "electric",
    buffer_capacity = "600kJ",
    input_flow_limit = "1200kW",
    usage_priority = "primary-input"
}
thisEquipment.energy_per_shield = "100kJ"]]--

--[[thisEquipment = data.raw["energy-shield-equipment"]["energy-shield-mk2-equipment"]
thisEquipment.energy_source =
{
    type = "electric",
    buffer_capacity = "180kJ",
    input_flow_limit = "360kW",
    usage_priority = "primary-input"
}
thisEquipment.energy_per_shield = "30kJ"]]-- -- This because it is redefined above.


--[[thisEquipment = data.raw["battery-equipment"]["battery-equipment"]
thisEquipment.energy_source =
{
    type = "electric",
    buffer_capacity = "50MJ",
    input_flow_limit = "50MW",
    output_flow_limit = "50MW",
    usage_priority = "terciary"
}
thisEquipment = data.raw["battery-equipment"]["battery-mk2-equipment"]
thisEquipment.energy_source =
{
    type = "electric",
    buffer_capacity = "250MJ",
    input_flow_limit = "250MW",
    output_flow_limit = "250MW",
    usage_priority = "terciary"
}]]--

thisEquipment = data.raw["solar-panel-equipment"]["solar-panel-equipment"]
thisEquipment.power = "7.5kW" -- 10 - 15 - 75

thisEquipment = data.raw["generator-equipment"]["fusion-reactor-equipment"]
thisEquipment.power = "0W" -- 75 

-- 2400kw, 2400kj -> 20 dmg/800kj on normal turret, 3/sec
-- 500kw, 550kj -> 20 dmg/500kj, 3/sec. Cheaper per damage as is.
-- 200kw, 12000kj, 20 dmg/800kj, 10/sec.

-- 4x damage per shot is 20
thisEquipment = data.raw["active-defense-equipment"]["basic-laser-defense-equipment"]
--thisEquipment.energy_source.buffer_capacity = "550kJ" -- 11 -> 110 -> 550
--thisEquipment.attack_parameters.ammo_type.energy_consumption = "500kJ" -- 10 -> 100 -> 500
thisEquipment.attack_parameters.damage_modifier = 4.-- 5 * 4 = 20
thisEquipment.attack_parameters.cooldown = 20.-- 20


thisEquipment = data.raw["active-defense-equipment"]["basic-electric-discharge-defense-equipment"]
--thisEquipment.energy_source.buffer_capacity = "20200kJ" -- 404 -> 4040 -> 20200
--thisEquipment.attack_parameters.ammo_type.energy_consumption = "10000kJ" -- 200 - 2000 - 10000
thisEquipment.attack_parameters.damage_modifier = 24.-- 3 * 10, 30 base. * 4 = 120. *2 = 240. mult = 24
thisEquipment.attack_parameters.cooldown = 300.-- 150 * 2 = 300 (2.5 sec -> 5 sec)

--thisEquipment = data.raw["movement-bonus-equipment"]["basic-exoskeleton-equipment"]
--thisEquipment.energy_consumption = "1000kW" -- 20 - 200 - 1000

--thisEquipment = data.raw["roboport-equipment"]["personal-roboport-equipment"]
--thisEquipment.energy_source =
--[[{
    type = "electric",
    buffer_capacity = "7MJ", -- 7k 
    input_flow_limit = "7MW", -- 700 - 7k
    usage_priority = "secondary-input"
}]]--

--thisEquipment.energy_consumption = "200kW" -- 4 - 40 - 200




