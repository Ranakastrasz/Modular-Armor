data:extend(
{
  --[[{
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
  },]]--
  
}
)
----------
local thisEquipment

thisEquipment = data.raw["solar-panel-equipment"]["solar-panel-equipment"]
thisEquipment.power = "2.5kW" -- 1.0 - 2.5 - 125
thisEquipment = data.raw["solar-panel-equipment"]["solar-panel-equipment-2"]
thisEquipment.power = "4kW" -- 1.5 - 4 - 200
thisEquipment = data.raw["solar-panel-equipment"]["solar-panel-equipment-3"]
thisEquipment.power = "6.5kW" -- 2.5 - 6.5 - 325
thisEquipment = data.raw["solar-panel-equipment"]["solar-panel-equipment-4"]
thisEquipment.power = "10.0kW" -- 4.0 - 10.0 - 500

thisEquipment = data.raw["generator-equipment"]["fusion-reactor-equipment"]
thisEquipment.power = "0W" -- 100 -5000
thisEquipment.generatedpower = "75kW" -- 75 
thisEquipment = data.raw["generator-equipment"]["fusion-reactor-equipment-2"]
thisEquipment.power = "0W" -- 150 -7500
thisEquipment = data.raw["generator-equipment"]["fusion-reactor-equipment-3"]
thisEquipment.power = "0W" -- 250 -12500
thisEquipment = data.raw["generator-equipment"]["fusion-reactor-equipment-4"]
thisEquipment.power = "0W" -- 400 -20000

-- 2400kw, 2400kj -> 20 dmg/800kj on normal turret, 3/sec
-- 500kw, 550kj -> 20 dmg/500kj, 3/sec. Cheaper per damage as is.
-- 200kw, 12000kj, 20 dmg/800kj, 10/sec.

-- 4x damage per shot is 20
thisEquipment = data.raw["active-defense-equipment"]["basic-laser-defense-equipment"]
thisEquipment.attack_parameters.damage_modifier = thisEquipment.attack_parameters.damage_modifier *4.
thisEquipment = data.raw["active-defense-equipment"]["basic-laser-defense-equipment-2"]
thisEquipment.attack_parameters.damage_modifier = thisEquipment.attack_parameters.damage_modifier * 4.
thisEquipment = data.raw["active-defense-equipment"]["basic-laser-defense-equipment-3"]
thisEquipment.attack_parameters.damage_modifier = thisEquipment.attack_parameters.damage_modifier *4.
thisEquipment = data.raw["active-defense-equipment"]["basic-laser-defense-equipment-4"]
thisEquipment.attack_parameters.damage_modifier = thisEquipment.attack_parameters.damage_modifier *4.
thisEquipment = data.raw["active-defense-equipment"]["basic-laser-defense-equipment-5"]
thisEquipment.attack_parameters.damage_modifier = thisEquipment.attack_parameters.damage_modifier *4.
thisEquipment = data.raw["active-defense-equipment"]["basic-laser-defense-equipment-6"]
thisEquipment.attack_parameters.damage_modifier = thisEquipment.attack_parameters.damage_modifier *4.
--thisEquipment.energy_source.buffer_capacity = "550kJ" -- 11 -> 110 -> 550
--thisEquipment.attack_parameters.ammo_type.energy_consumption = "500kJ" -- 10 -> 100 -> 500
--thisEquipment.attack_parameters.damage_modifier = 4.-- 5 * 4 = 20


 
