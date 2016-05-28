data:extend(
{

  {
    type = "technology",
    name = "power-conduit-equipment",
    icon = "__Modular-Armor__/graphics/technology/power-conduit-equipment.png",
    prerequisites = {"armor-making-3"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "power-conduit-equipment"
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
    name = "engine-equipment",
    icon = "__Modular-Armor__/graphics/technology/engine-unit.png",
    prerequisites = {"armor-making-3"},
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
  --[[{
    type = "technology",
    name = "solar-panel-equipment-mk2",
    icon = "__Modular-Armor__/graphics/technology/solar-panel-large-equipment.png",
    prerequisites = {"solar-panel-equipment"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "solar-panel-equipment-mk2"
      }
    },
    unit =
    {
      count = 75,
      ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}},
      time = 15
    },
    order = "g-k-3-2"
  },]]--
  {
    type = "technology",
    name = "basic-actuator-equipment",
    icon = "__Modular-Armor__/graphics/technology/basic-actuator-equipment.png",
    prerequisites = {"armor-making-3", "electric-engine"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "basic-actuator-equipment"
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
    name = "energy-shield-basic-equipment",
    icon = "__Modular-Armor__/graphics/technology/energy-shield-basic-equipment.png",
    prerequisites = {"armor-making-3"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "energy-shield-basic-equipment"
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
      ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"alien-science-pack", 1}},
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
      ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, {"alien-science-pack", 1}},
      time = 30
    },
    order = "g-e-c"
  },]]--
  ---
  --[[{
    type = "technology",
    name = "battery-equipment",
    icon = "__Modular-Armor__/graphics/technology/battery-mk1-equipment.png",
    prerequisites = {"armor-making-3", "battery"},
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
      ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"alien-science-pack", 1}},
      time = 30
    },
    order = "g-i-b"
  },]]--
  {
    type = "technology",
    name = "battery-mk3-equipment",
    icon = "__Modular-Armor__/graphics/technology/battery-mk3-equipment.png",
    prerequisites = {"battery-mk2-equipment"},
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
      ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, {"alien-science-pack",1}},
      time = 45
    },
    order = "g-i-c"
  },
  {
    type = "technology",
    name = "battery-mk4-equipment",
    icon = "__Modular-Armor__/graphics/technology/battery-mk4-equipment.png",
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
      count = 500,
      ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, {"alien-science-pack",1}},
      time = 60
    },
    order = "g-i-d"
  },
  ---
    --[[{
        type = "technology",
        name = "fusion-reactor-equipment",
        icon = "__base__/graphics/technology/fusion-reactor-equipment.png",
        prerequisites = {"armor-making-3"},
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
            ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, {"alien-science-pack", 1}},
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
        prerequisites = {"armor-making-3", "electric-engine"},
        unit =
        {
            count = 100,
            ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"alien-science-pack", 1}},
            time = 30
        },
        order = "g-c-a"
    }]]--
    {
        type = "technology",
        name = "power-armor-3",
        icon = "__base__/graphics/technology/power-armor-mk2.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "power-armor-mk3"
            }
        },
        prerequisites = {"power-armor-2"},
        unit =
        {
            count = 500,
            ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 2}, {"alien-science-pack", 5}},
            time = 35
        },
        order = "g-c-c"
    },
    {
        type = "technology",
        name = "power-armor-4",
        icon = "__base__/graphics/technology/power-armor-mk2.png",
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
            ingredients = {{"science-pack-1", 2}, {"science-pack-2", 3}, {"science-pack-3", 5}, {"alien-science-pack", 5}},
            time = 60
        },
        order = "g-c-d"
    },
}
)

-- Mk1 Shield
data.raw["technology"]["energy-shield-equipment"].prerequisites = {"energy-shield-basic-equipment"}
data.raw["technology"]["energy-shield-equipment"].unit.ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"alien-science-pack", 1}}
data.raw["technology"]["energy-shield-equipment"].order = "g-e-b"

-- Mk2 Shield
data.raw["technology"]["energy-shield-mk2-equipment"].prerequisites = {"energy-shield-equipment"}
data.raw["technology"]["energy-shield-mk2-equipment"].unit.ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, {"alien-science-pack", 1}}
data.raw["technology"]["energy-shield-mk2-equipment"].order = "g-e-c"


-- Old Actuator
data.raw["technology"]["basic-exoskeleton-equipment"].prerequisites = {"basic-actuator-equipment"}
data.raw["technology"]["basic-exoskeleton-equipment"].order = "g-h-b"
data.raw["technology"]["basic-exoskeleton-equipment"].icon = "__Modular-Armor__/graphics/technology/advanced-actuator-equipment.png"

---Old Batteries

data.raw["technology"]["battery-equipment"].icon = "__Modular-Armor__/graphics/technology/battery-mk1-equipment.png"
    -- New Battery Icon
        
data.raw["technology"]["battery-mk2-equipment"].icon = "__Modular-Armor__/graphics/technology/battery-mk2-equipment.png" -- Icon
data.raw["technology"]["battery-mk2-equipment"].unit.ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"alien-science-pack", 1}}

-- Solar panel Mk1
--data.raw["technology"]["solar-panel-equipment"].order = "g-k-3-1"
data.raw["technology"]["solar-panel-equipment"].enabled = false
--- Fusion Reactor
data.raw["technology"]["fusion-reactor-equipment"].unit.ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, {"alien-science-pack", 1}} -- Additionally requires alien science.
data.raw["technology"]["fusion-reactor-equipment"].prerequisites = {"power-armor"}
data.raw["technology"]["fusion-reactor-equipment"].order = "g-k-4-1"

table.insert (data.raw["technology"]["fusion-reactor-equipment"].effects,
    {
        type = "unlock-recipe",
        recipe = "alien-fuel"
    } -- Add alien fuel to Fusion reactor tech
)

data.raw["technology"]["power-armor"].unit.ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"alien-science-pack", 1}} -- This might have compatibility issues if anything else changes recipes. Would prefer to simply change the blue pack to alien pack, but unsure of syntax.


data.raw["technology"]["personal-roboport-equipment"].prerequisites = {"construction-robotics","armor-making-3"} -- Solar panel is no longer a prerequisite as there are many other power sources.

-- Alien Tech
table.insert (data.raw["technology"]["alien-technology"].effects,
    {
        type = "unlock-recipe",
        recipe = "alien-cable"
    } -- Add alien cable to Alien tech.
)

