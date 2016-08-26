data:extend(
{
    {
        type = "armor",
        name = "power-armor-mk3",
        icon = "__Modular-Armor__/graphics/icons/power-armor-mk3.png",
        flags = {"goes-to-main-inventory"},
        resistances =
        {
            {
                type = "physical",
                decrease = 12,
                percent = 45
            },
            {
                type = "acid",
                decrease = 12,
                percent = 45
            },
            {
                type = "fire",
                percent = 85
            },
            {
                type = "explosion",
                decrease = 25,
                percent = 55
            }
        },
        durability = 30000,
        subgroup = "armor",
        order = "f[power-armor-mk3]",
        stack_size = 1,
        equipment_grid = {width = 12, height = 12},
        inventory_size_bonus = 40
    },

    {
        type = "armor",
        name = "power-armor-mk4",
        icon = "__Modular-Armor__/graphics/icons/power-armor-mk4.png",
        flags = {"goes-to-main-inventory"},
        resistances =
        {
            {
                type = "physical",
                decrease = 15,
                percent = 50
            },
            {
                type = "acid",
                decrease = 15,
                percent = 50
            },
            {
                type = "fire",
                percent = 90
            },
            {
                type = "explosion",
                decrease = 30,
                percent = 60
            }
        },
        durability = 40000,
        subgroup = "armor",
        order = "g[power-armor-mk4]",
        stack_size = 1,
        equipment_grid = {width = 15, height = 15},
        inventory_size_bonus = 50
    },
  
  ----
    {
        type = "item",
        name = "solar-panel-equipment-2",
        icon = "__Modular-Armor__/graphics/icons/solar-panel-equipment-2.png",
        placed_as_equipment_result = "solar-panel-equipment-2",
        flags = {"goes-to-main-inventory"},
        subgroup = "equipment",
        order = "a[energy-source]-c[solar-panel]-b[solar-panel-2]",
        stack_size = 20
    },
    {
        type = "item",
        name = "engine-equipment",
        icon = "__Modular-Armor__/graphics/icons/engine-equipment.png",
        placed_as_equipment_result = "engine-equipment",
        flags = {"goes-to-main-inventory"},
        subgroup = "equipment",
        order = "a[energy-source]-b[engine-equipment]-a[engine-equipment]",
        stack_size = 20
    },
    {
        type = "item",
        name = "semi-conductor-conduit-equipment",
        icon = "__Modular-Armor__/graphics/icons/semi-conductor-conduit-equipment.png",
        placed_as_equipment_result = "semi-conductor-conduit-equipment",
        flags = {"goes-to-main-inventory"},
        subgroup = "equipment",
        order = "a[energy-source]-a[power-conduit-equipment]-a[power-conduit-equipment]",
        stack_size = 20
    },
    {
        type = "item",
        name = "power-conduit-equipment",
        icon = "__Modular-Armor__/graphics/icons/power-conduit-equipment.png",
        placed_as_equipment_result = "power-conduit-equipment",
        flags = {"goes-to-main-inventory"},
        subgroup = "equipment",
        order = "a[energy-source]-a[power-conduit-equipment]-b[power-conduit-equipment]",
        stack_size = 20
    },
    {
        type = "item",
        name = "electrostatic-shield-equipment",
        icon = "__Modular-Armor__/graphics/icons/electrostatic-shield-equipment.png",
        placed_as_equipment_result = "electrostatic-shield-equipment",
        flags = {"goes-to-main-inventory"},
        subgroup = "equipment",
        order = "b[shield]-a[energy-shield-equipment]",
        stack_size = 50,
        default_requiest_amount = 10
    },
    {
        type = "item",
        name = "actuator-equipment",
        icon = "__Modular-Armor__/graphics/icons/actuator-equipment.png",
        placed_as_equipment_result = "actuator-equipment",
        flags = {"goes-to-main-inventory"},
        subgroup = "equipment",
        order = "e[exoskeleton]-a[exoskeleton-equipment]",
        stack_size = 20
    },
    --[[{
        type = "item",
        name = "battery-equipment",
        icon = "__Modular-Armor__/graphics/icons/battery-mk1-equipment.png",
        placed_as_equipment_result = "battery-equipment",
        flags = {"goes-to-main-inventory"},
        subgroup = "equipment",
        order = "c[battery]-a[battery-equipment]",
        stack_size = 50,
        default_requiest_amount = 10
    },
    {
        type = "item",
        name = "battery-mk2-equipment",
        icon = "__Modular-Armor__/graphics/icons/battery-mk2-equipment.png",
        placed_as_equipment_result = "battery-mk2-equipment",
        flags = {"goes-to-main-inventory"},
        subgroup = "equipment",
        order = "c[battery]-b[battery-equipment-mk2]",
        stack_size = 50,
        default_requiest_amount = 10
    },]]--
    {
        type = "item",
        name = "battery-mk3-equipment",
        icon = "__Modular-Armor__/graphics/icons/battery-mk3-equipment.png",
        placed_as_equipment_result = "battery-mk3-equipment",
        flags = {"goes-to-main-inventory"},
        subgroup = "equipment",
        order = "c[battery]-c[battery-equipment-mk3]",
        stack_size = 50,
        default_requiest_amount = 10
    },
    {
        type = "item",
        name = "battery-mk4-equipment",
        icon = "__Modular-Armor__/graphics/icons/battery-mk4-equipment.png",
        placed_as_equipment_result = "battery-mk4-equipment",
        flags = {"goes-to-main-inventory"},
        subgroup = "equipment",
        order = "c[battery]-d[battery-equipment-mk4]",
        stack_size = 50,
        default_requiest_amount = 10
    },
    {
        type = "item",
        name = "alien-fuel",
        icon = "__Modular-Armor__/graphics/icons/alien-fuel.png",
        flags = {"goes-to-main-inventory"},
        fuel_value = "200MJ",
        subgroup = "raw-resource",
        order = "c[alien-fuel]",
        stack_size = 200,
        --[[rana_mod = {
            powerGroup = "fusion",
            powerType = "fuelled",
            fuelPower = "200MJ",
        },]]--
    },
}

)

data.raw["item"]["battery-equipment"].icon = "__Modular-Armor__/graphics/icons/battery-mk1-equipment.png" -- Icon
data.raw["item"]["battery-mk2-equipment"].icon = "__Modular-Armor__/graphics/icons/battery-mk2-equipment.png"


data.raw["item"]["energy-shield-equipment"].order = "b[shield]-b[energy-shield-equipment]" -- Insert basic shield at front of this list
data.raw["item"]["energy-shield-mk2-equipment"].order = "b[shield]-c[energy-shield-equipment]"

data.raw["item"]["exoskeleton-equipment"].icon = "__Modular-Armor__/graphics/icons/exoskeleton-equipment.png"
data.raw["item"]["exoskeleton-equipment"].order = "e[exoskeleton]-b[exoskeleton-equipment]"


--data.raw["item"]["solar-panel-equipment"].order = "a[energy-source]-c[solar-panel]-a[solar-panel]"

data.raw["item"]["fusion-reactor-equipment"].order = "a[energy-source]-d[fusion-reactor-equipment]-a[fusion-reactor-equipment]"
--data.raw["item"]["fusion-reactor-equipment"].placed_as_equipment_result = "modular-fusion-reactor-equipment"

--[[data.raw["item"]["solid-fuel"].rana_mod = {
            powerGroup = "burner",
            powerType = "fuelled",
            fuelPower = "25MJ",
            priority = 1,
        }
data.raw["item"]["coal"].rana_mod = {
            powerGroup = "burner",
            powerType = "fuelled",
            fuelPower = "8MJ",
            priority = 2,
        }

data.raw["item"]["raw-wood"].rana_mod = {
            powerGroup = "burner",
            powerType = "fuelled",
            fuelPower = "4MJ",
            priority = 3,
        }]]--
