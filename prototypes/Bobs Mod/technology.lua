data:extend(
{

  {
    type = "technology",
    name = "semiconductor-conduit-equipment",
    icon = "__Modular-Armor__/graphics/technology/power-conduit-equipment.png",
    icon_size = 128,
	enabled = false,
    prerequisites = {"modular-armor","electric-energy-distribution-1"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "semiconductor-conduit-equipment"
      }
    },
    unit =
    {
      count = 50,
      ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}},
      time = 15
    },
    order = "g-k-1-1"
  },
  {
    type = "technology",
    name = "superconductor-conduit-equipment",
    icon = "__Modular-Armor__/graphics/technology/power-conduit-equipment-2.png",
    icon_size = 128,
	enabled = false,
    prerequisites = {"semiconductor-conduit-equipment","electric-energy-distribution-2","effectivity-module-2"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "superconductor-conduit-equipment"
      }
    },
    unit =
    {
      count = 200,
      ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, {"military-science-pack", 1}},
      time = 45
    },
    order = "g-k-1-2"
  },
  {
    type = "technology",
    name = "engine-equipment",
    icon = "__Modular-Armor__/graphics/technology/burner-generator-equipment.png",
    icon_size = 128,
    prerequisites = {"modular-armor","engine","productivity-module",},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "engine-equipment"
      }
    },
    unit =
    {
      count = 100,
      ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}},
      time = 30
    },
    order = "g-k-2-1"
  },
  {
    type = "technology",
    name = "solar-panel-equipment-2",
    icon = "__Modular-Armor__/graphics/technology/solar-panel-equipment-2.png",
    icon_size = 128,
    prerequisites = {"solar-panel-equipment","productivity-module"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "solar-panel-equipment-2"
      }
    },
    unit =
    {
      count = 75,
      ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}},
      time = 15
    },
    order = "g-k-3-2"
  },
  {
    type = "technology",
    name = "actuator-equipment",
    icon = "__Modular-Armor__/graphics/technology/actuator-equipment.png",
    icon_size = 128,
    prerequisites = {"modular-armor", "engine"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "actuator-equipment"
      }
    },
    unit =
    {
      count = 50,
      ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}},
      time = 30
    },
    order = "g-h-a"
  },
  --[[{
    type = "technology",
    name = "basic-exoskeleton-equipment",
    icon = "__base__/graphics/technology/basic-exoskeleton-equipment.png",
    prerequisites = {"basic-actuator-equipment"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "basic-exoskeleton-equipment"
      }
    },
    unit =
    {
      count = 50,
      ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}},
      time = 30
    },
    order = "g-h-b"
  },]]--
  ----
  {
    type = "technology",
    name = "electrostatic-shield-equipment",
    icon = "__Modular-Armor__/graphics/technology/electrostatic-shield-equipment.png",
    icon_size = 128,
    prerequisites = {"modular-armor"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "electrostatic-shield-equipment"
      }
    },
    unit =
    {
      count = 50,
      ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}},
      time = 15
    },
    order = "g-e-a"
  },
  --[[{
    type = "technology",
    name = "energy-shield-equipment",
    icon = "__base__/graphics/technology/energy-shield-equipment.png",
    prerequisites = {"energy-shield-basic-equipment"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "energy-shield-equipment"
      }
    },
    unit =
    {
      count = 75,
      ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"military-science-pack", 1}},
      time = 15
    },
    order = "g-e-b"
  },
  {
    type = "technology",
    name = "energy-shield-mk2-equipment",
    icon = "__base__/graphics/technology/energy-shield-mk2-equipment.png",
    prerequisites = {"energy-shield-equipment"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "energy-shield-mk2-equipment"
      }
    },
    unit =
    {
      count = 100,
      ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, {"military-science-pack", 1}},
      time = 30
    },
    order = "g-e-c"
  },]]--
  ---
  --[[{
    type = "technology",
    name = "battery-equipment",
    icon = "__Modular-Armor__/graphics/technology/battery-mk1-equipment.png",
    prerequisites = {"modular-armor", "battery"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "battery-equipment"
      }
    },
    unit =
    {
      count = 50,
      ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}},
      time = 15
    },
    order = "g-i-a"
  },
  {
    type = "technology",
    name = "battery-mk2-equipment",
    icon = "__Modular-Armor__/graphics/technology/battery-mk2-equipment.png",
    prerequisites = {"battery-equipment"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "battery-mk2-equipment"
      }
    },
    unit =
    {
      count = 100,
      ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"military-science-pack", 1}},
      time = 30
    },
    order = "g-i-b"
  },]]--
  {
    type = "technology",
    name = "battery-mk3-equipment",
    icon = "__Modular-Armor__/graphics/technology/battery-mk3-equipment.png",
    icon_size = 128,
    prerequisites = {"battery-mk2-equipment","effectivity-module-2"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "battery-mk3-equipment"
      }
    },
    unit =
    {
      count = 200,
      ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, {"military-science-pack",1}},
      time = 45
    },
    order = "g-i-c"
  },
  {
    type = "technology",
    name = "battery-mk4-equipment",
    icon = "__Modular-Armor__/graphics/technology/battery-mk4-equipment.png",
    icon_size = 128,
    prerequisites = {"battery-mk3-equipment", "effectivity-module-3"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "battery-mk4-equipment"
      }
    },
    unit =
    {
      count = 400,
      ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, {"military-science-pack",1}, {"high-tech-science-pack", 1}},
      time = 60
    },
    order = "g-i-d"
  },
  ---
    --[[{
        type = "technology",
        name = "fusion-reactor-equipment",
        icon = "__base__/graphics/technology/fusion-reactor-equipment.png",
        prerequisites = {"modular-armor"},
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "fusion-reactor-equipment"
            },
            {
                type = "unlock-recipe",
                recipe = "alien-fuel"
            }
        },
        unit =
        {
            count = 200,
            ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, {"military-science-pack", 1}},
            time = 30
        },
        order = "g-l"
    },]]--
    --[[{
        type = "technology",
        name = "power-armor",
        icon = "__base__/graphics/technology/power-armor.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "power-armor"
            }
        },
        prerequisites = {"modular-armor", "electric-engine"},
        unit =
        {
            count = 100,
            ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"military-science-pack", 1}},
            time = 30
        },
        order = "g-c-a"
    }]]--
    {
        type = "technology",
        name = "power-armor-3",
        icon = "__Modular-Armor__/graphics/technology/power-armor-mk3.png",
        icon_size = 128,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "power-armor-mk3"
            }
        },
        prerequisites = {"power-armor-2","speed-module-3","effectivity-module-3","productivity-module-3","rocket-silo"},
        unit =
        {
            count = 500,
            ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1},
			{"science-pack-3", 2}, {"military-science-pack", 3},
			{"high-tech-science-pack", 5}},
            time = 35
        },
        order = "g-c-c"
    },
    {
        type = "technology",
        name = "power-armor-4",
        icon = "__Modular-Armor__/graphics/technology/power-armor-mk4.png",
        icon_size = 128,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "power-armor-mk4"
            }
        },
        prerequisites = {"power-armor-3"},
        unit =
        {
            count = 1000,
            ingredients = {{"science-pack-1", 2}, {"science-pack-2", 3},
			{"science-pack-3", 5}, {"military-science-pack", 5},
			{"high-tech-science-pack", 5},{"space-science-pack", 5}},
            time = 60
        },
        order = "g-c-d"
    },
}
)
-- Vanilla added the Military Science pack I would have added in already.

-- Mk1 Shield
data.raw["technology"]["energy-shield-equipment"].prerequisites = {"electrostatic-shield-equipment","speed-module"}
--data.raw["technology"]["energy-shield-equipment"].unit.ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"military-science-pack", 1}}
data.raw["technology"]["energy-shield-equipment"].order = "g-e-b"

-- Mk2 Shield
data.raw["technology"]["energy-shield-mk2-equipment"].prerequisites = {"energy-shield-equipment","speed-module-3"}
--data.raw["technology"]["energy-shield-mk2-equipment"].unit.ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, {"military-science-pack", 1}}
data.raw["technology"]["energy-shield-mk2-equipment"].order = "g-e-c"


-- Old Actuator
data.raw["technology"]["exoskeleton-equipment"].prerequisites = {"actuator-equipment","electric-engine","speed-module"}
data.raw["technology"]["exoskeleton-equipment"].order = "g-h-b"
data.raw["technology"]["exoskeleton-equipment"].icon = "__Modular-Armor__/graphics/technology/exoskeleton-equipment.png"
data.raw["technology"]["exoskeleton-equipment"].icon_size = 128

---Old Batteries

data.raw["technology"]["battery-equipment"].icon = "__Modular-Armor__/graphics/technology/battery-mk1-equipment.png"
data.raw["technology"]["battery-equipment"].icon_size = 128
    -- New Battery Icon
data.raw["technology"]["battery-mk2-equipment"].prerequisites = {"battery-equipment","effectivity-module"}
data.raw["technology"]["battery-mk2-equipment"].icon = "__Modular-Armor__/graphics/technology/battery-mk2-equipment.png" -- Icon
data.raw["technology"]["battery-mk2-equipment"].icon_size = 128
--data.raw["technology"]["battery-mk2-equipment"].unit.ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"military-science-pack", 1}}



-- Solar panel Mk1
data.raw["technology"]["solar-panel-equipment"].prerequisites = {"modular-armor","solar-energy"}
--data.raw["technology"]["solar-panel-equipment"].order = "g-k-3-1"
--data.raw["technology"]["solar-panel-equipment"].enabled = false
--- Fusion Reactor
--data.raw["technology"]["fusion-reactor-equipment"].unit.ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, {"military-science-pack", 1}}



data.raw["technology"]["fusion-reactor-equipment"].prerequisites = {"power-armor","energy-shield-equipment","productivity-module-2"}
data.raw["technology"]["fusion-reactor-equipment"].order = "g-k-4-1"

-- Alien everything removed.
--[[table.insert (data.raw["technology"]["fusion-reactor-equipment"].effects,
    {
        type = "unlock-recipe",
        recipe = "alien-fuel"
    } -- Add alien fuel to Fusion reactor tech
)
table.insert (data.raw["technology"]["fusion-reactor-equipment"].effects,
    {
        type = "unlock-recipe",
        recipe = "alien-rocket-fuel"
    } -- And rocket Fuel varient
)]]--

data.raw["technology"]["modular-armor"].prerequisites = {"heavy-armor","advanced-electronics"}

--data.raw["technology"]["power-armor"].unit.ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"military-science-pack", 1}} -- This might have compatibility issues if anything else changes recipes. Would prefer to simply change the blue pack to alien pack, but unsure of syntax.
data.raw["technology"]["power-armor"].prerequisites = {"modular-armor","electric-engine","speed-module"}

data.raw["technology"]["power-armor-2"].prerequisites = {"power-armor", "speed-module-2", "effectivity-module-2"}

data.raw["technology"]["personal-roboport-equipment"].prerequisites = {"construction-robotics","modular-armor"} -- Solar panel is no longer a prerequisite as there are many other power sources.



