
--data.raw["generator-equipment"]["fusion-reactor-equipment"] = nil

data:extend(
{
  {
    type = "fuel-category",
    name = "rana-conduit"
  },
  
  {
    type = "energy-shield-equipment",
    name = "electrostatic-shield-equipment",
    max_shield_value = 5,
    energy_per_shield = "10kJ",
    energy_source =
    {
      type = "electric",
      buffer_capacity =  "10.kJ",
      input_flow_limit = "15.kW",
      usage_priority = "primary-input"
    },
    shape =
    {
      width = 1,
      height = 1,
      type = "full"
    },
    sprite =
    {
      filename = "__Modular-Armor__/graphics/equipment/electrostatic-shield-equipment.png",
      width = 32,
      height = 32,
      priority = "medium"
    },
    categories = {"armor"},
  },

  {
    type = "energy-shield-equipment",
    name = "energy-shield-mk2-equipment",
    max_shield_value = 350, -- 150
    energy_per_shield = "30kJ", -- 30kj
    energy_source =
    {
      type = "electric",
      buffer_capacity = "400kJ", -- 180kj * 2.25
      input_flow_limit = "800kW", -- 360kw * 2.25
      usage_priority = "primary-input"
    },
    shape =
    {
      width = 3,
      height = 3,
      type = "full"
    },
    sprite =
    {
      filename = "__Modular-Armor__/graphics/equipment/energy-shield-mk2-equipment-3x3.png",
      width = 96,
      height = 96,
      priority = "medium"
    },
    categories = {"armor"},
  },
  {
    type = "solar-panel-equipment",
    name = "solar-panel-equipment",
    sprite = 
    {
      filename = "__Modular-Armor__/graphics/equipment/solar-panel-equipment-3x1.png",
      width = 96,
      height = 32,
      priority = "medium"
    },
    shape =
    {
      width = 3,
      height = 1,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    power = "75kW",
    categories = {"armor"},
  },
  {
    type = "solar-panel-equipment",
    name = "solar-panel-equipment-2",
    sprite = 
    {
      filename = "__Modular-Armor__/graphics/equipment/solar-panel-equipment-2-2x5.png",
      width = 160,
      height = 64,
      priority = "medium"
    },
    shape =
    {
      width = 5,
      height = 2,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    power = "300kW",
    categories = {"armor"},
  },
  {
    type = "generator-equipment",
    name = "semiconductor-conduit-equipment",
    sprite = 
    {
      filename = "__Modular-Armor__/graphics/equipment/power-conduit-equipment-1x1.png",
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
		type = "burner",
		usage_priority = "primary-output"
	},
	burner =
	{
	  fuel_category = "rana-conduit",
	  effectivity = 1,
	  fuel_inventory_size = 0,
	  burnt_inventory_size = 0
	},
	power = "40kW",
	categories = {"armor"}
  },
  {
    type = "generator-equipment",
    name = "superconductor-conduit-equipment",
    sprite = 
    {
      filename = "__Modular-Armor__/graphics/equipment/power-conduit-equipment-3x3.png",
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
	energy_source =
	{
		type = "burner",
		usage_priority = "primary-output"
	},
	burner =
	{
	  fuel_category = "rana-conduit",
	  effectivity = 1,
	  fuel_inventory_size = 0,
	  burnt_inventory_size = 0
	},
	power = "720kW",
	categories = {"armor"},
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
		type = "burner",
		usage_priority = "primary-output"
	},
	burner =
	{
	  fuel_category = "chemical",
	  effectivity = 0.1,
	  fuel_inventory_size = 3,
	  burnt_inventory_size = 1
	},
	power = "100kW",
	categories = {"armor"},
  },
  {
    type = "movement-bonus-equipment",
    name = "actuator-equipment",
    sprite = 
    {            
      filename = "__Modular-Armor__/graphics/equipment/actuator-equipment.png",
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
    energy_consumption = "25kW",
    movement_bonus = 0.05,
	categories = {"armor"},
  },
  {
    type = "generator-equipment",
    name = "fusion-reactor-equipment",
    sprite =
    {
      filename = "__base__/graphics/equipment/fusion-reactor-equipment.png",
      width = 128,
      height = 128,
      priority = "medium"
    },
    shape =
    {
      width = 4,
      height = 4,
      type = "full"
    },
	burner =
	{
	  fuel_category = "nuclear",
	  effectivity = 0.05,
	  fuel_inventory_size = 1,
	  burnt_inventory_size = 1
	},
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
		
	power = "960kW",
	categories = {"armor"},
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
      buffer_capacity = "10MJ",
      input_flow_limit = "100MW",
      output_flow_limit = "100MW",
      usage_priority = "terciary"
    },
	categories = {"armor"},
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
      buffer_capacity = "50MJ",
      input_flow_limit = "500MW",
      output_flow_limit = "500MW",
      usage_priority = "terciary"
    },
	categories = {"armor"},
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
      buffer_capacity = "200MJ",
      input_flow_limit = "2000MW",
      output_flow_limit = "2000MW",
      usage_priority = "terciary"
    },
	categories = {"armor"},
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
      buffer_capacity = "800MJ",
      input_flow_limit = "8000MW",
      output_flow_limit = "8000MW",
      usage_priority = "terciary"
    },
	categories = {"armor"},
  }
  
}
)

local thisEquipment
--vanilla is now 5*15 = 75 base damage.
-- Way more than I thought was reasonable, but yea.

-- 4x damage per shot is 20
thisEquipment = data.raw["active-defense-equipment"]["personal-laser-defense-equipment"]
--thisEquipment.energy_source.buffer_capacity = "550kJ" -- 11 -> 110 -> 550
--thisEquipment.attack_parameters.ammo_type.energy_consumption = "500kJ" -- 10 -> 100 -> 500
--thisEquipment.attack_parameters.damage_modifier = 4.-- 5 * 4 = 20
--thisEquipment.attack_parameters.cooldown = 20.-- 20

-- Still make it a laser-turret for damage amplification via tech.
thisEquipment.attack_parameters.ammo_type.category = "laser-turret"


-- Witholding judgement for now till I try it out.

--thisEquipment = data.raw["active-defense-equipment"]["discharge-defense-equipment"]
--thisEquipment.energy_source.buffer_capacity = "20200kJ" -- 404 -> 4040 -> 20200
--thisEquipment.attack_parameters.ammo_type.energy_consumption = "10000kJ" -- 200 - 2000 - 10000
--thisEquipment.attack_parameters.damage_modifier = 24.-- 3 * 10, 30 base. * 4 = 120. *2 = 240. mult = 24
--thisEquipment.attack_parameters.cooldown = 300.-- 150 * 2 = 300 (2.5 sec -> 5 sec)
--thisEquipment.attack_parameters.ammo_type.category = "laser-turret"

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




   
   
