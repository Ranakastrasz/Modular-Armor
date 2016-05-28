data:extend(
{
    --[[{
        type = "recipe",
        name = "solar-panel-equipment-mk2",
        enabled = "false",
        energy_required = 10,
        ingredients =
        {
            {"solar-panel-equipment", 5},
            {"processing-unit", 5}
        },
        result = "solar-panel-equipment-mk2"
    },]]--
    {
        type = "recipe",
        name = "basic-actuator-equipment",
        enabled = "false",
        energy_required = 10,
        ingredients =
        {
            {"advanced-circuit", 2},
            {"electric-engine-unit", 3},
            {"steel-plate", 5}
        },
        result = "basic-actuator-equipment"
    },
    {
        type = "recipe",
        name = "power-conduit-equipment",
        enabled = "false",
        energy_required = 10,
        ingredients =
        {
            --{"power-conduit-equipment", 1},
            {"medium-electric-pole", 10},
            {"advanced-circuit", 5}
        },
        result = "power-conduit-equipment"
    },
    {
        type = "recipe",
        name = "engine-equipment",
        enabled = "false",
        energy_required = 10,
        ingredients =
        {
            {"engine-unit", 5},
            {"advanced-circuit", 5},
            {"steel-plate", 5}
        },
        result = "engine-equipment"
    },
    {
        type = "recipe",
        name = "alien-fuel",
        enabled = "false",
        energy_required = 20,
        ingredients =
        {
            {"alien-artifact", 1},
            {"solid-fuel", 3},
        },
        result = "alien-fuel",
        result_count = 3
    },
    {
        type = "recipe",
        name = "alien-cable",
        enabled = "false",
        energy_required = 20,
        ingredients =
        {
            {"alien-artifact", 1},
            {"copper-cable", 10},
        },
        result = "alien-cable",
        result_count = 10
    },
  
    {
        type = "recipe",
        name = "energy-shield-basic-equipment",
        enabled = false,
        energy_required = 10,
        ingredients =
        {
            {"electronic-circuit", 1},
            {"steel-plate", 2},
            {"copper-cable", 10}
        },
        result = "energy-shield-basic-equipment"
    },
    {
        type = "recipe",
        name = "battery-equipment",
        enabled = false,
        energy_required = 10,
        ingredients =
        {
            {"battery", 5},
            {"electronic-circuit", 10},
            {"steel-plate", 5}
        },
        result = "battery-equipment"
    },
    {
        type = "recipe",
        name = "battery-mk2-equipment",
        enabled = false,
        energy_required = 10,
        ingredients =
        {
            {"battery-equipment", 5},
            {"advanced-circuit", 10},
            {"alien-cable", 1}
        },
        result = "battery-mk2-equipment"
    },
    {
        type = "recipe",
        name = "battery-mk3-equipment",
        enabled = false,
        energy_required = 10,
        ingredients =
        {
            {"battery-mk2-equipment", 5},
            {"processing-unit", 10},
            {"alien-cable", 10}
        },
        result = "battery-mk3-equipment"
    },
    {
        type = "recipe",
        name = "battery-mk4-equipment",
        enabled = false,
        energy_required = 10,
        ingredients =
        {
            {"battery-mk3-equipment", 10},
            {"effectivity-module-3", 1}
        },
        result = "battery-mk4-equipment"
    },
    {
        type = "recipe",
        name = "power-armor-mk3",
        enabled = false,
        energy_required = 30,
        ingredients =
        {
            {"power-armor-mk2", 2},
            {"effectivity-module-3", 10},
            {"speed-module-3", 10},
            {"productivity-module-3", 10},
            {"processing-unit", 200},
            {"electric-engine-unit", 100},
            {"alien-cable", 1000}
            
        },
        result = "power-armor-mk3"
    },
    {
        type = "recipe",
        name = "power-armor-mk4",
        enabled = false,
        energy_required = 35,
        ingredients =
        {
            {"power-armor-mk3", 2},
            {"effectivity-module-3",50},
            {"speed-module-3", 50},
            {"productivity-module-3", 50},
            {"processing-unit", 1000},
            {"electric-engine-unit", 400},
            {"alien-cable", 5000}
            
        },
        result = "power-armor-mk4"
    },
})

data.raw["recipe"]["basic-exoskeleton-equipment"].ingredients =
{
    {"basic-actuator-equipment", 10},
    {"processing-unit", 10}
}

--[[data.raw["recipe"]["solar-panel-equipment"].ingredients =
{
    {"solar-panel", 5},
    {"advanced-circuit", 5},
    {"steel-plate", 5}
}]]--

--[[
{
    type = "recipe",
    name = "energy-shield-equipment",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {"advanced-circuit", 5},
      {"steel-plate", 10}
    },
    result = "energy-shield-equipment"
  },
  {
    type = "recipe",
    name = "energy-shield-mk2-equipment",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {"energy-shield-equipment", 10},
      {"processing-unit", 10}
    },
    result = "energy-shield-mk2-equipment"
  },

]]--
data.raw["recipe"]["energy-shield-equipment"].ingredients = 
{
      {"energy-shield-basic-equipment", 10},
      {"advanced-circuit" , 5},
      {"steel-plate"      ,10},
      {"alien-cable"      , 2}
}
data.raw["recipe"]["energy-shield-mk2-equipment"].ingredients = 
{
      {"energy-shield-equipment", 10},
      {"processing-unit", 10},
      {"alien-cable"     ,50}
}
data.raw["recipe"]["fusion-reactor-equipment"].ingredients = 
{
      {"energy-shield-equipment",20},
      {"processing-unit", 100},
      {"alien-cable", 200},
      {"steel-plate"  ,200}
}

----
data.raw["recipe"]["heavy-armor"].ingredients =
{
    {"basic-armor",1},
    {"copper-plate", 100},
    {"steel-plate", 40} -- 50
}

data.raw["recipe"]["basic-modular-armor"].ingredients =
{
    { "heavy-armor", 1},
    { "advanced-circuit", 40}
    
    -- 50 Steel
    -- 30 Red Circuit
    -- 5 Blue Circuit
}

data.raw["recipe"]["power-armor"].ingredients =
{
    {"basic-modular-armor", 2},
    {"processing-unit", 100},
    {"electric-engine-unit", 30},
    {"alien-cable", 100}
    -- 100 steel
    -- 10 artifact
    -- 30 Engine
    -- 100 Blue circuit
}

data.raw["recipe"]["power-armor-mk2"].ingredients =
{
    {"power-armor", 1},
    {"effectivity-module-3", 5},
    {"speed-module-3", 5},
    {"processing-unit", 100},
    {"electric-engine-unit", 50},
    {"alien-cable", 400}
    
    -- 5 T3 Speed module
    -- 5 T3 Efficiency Module
    -- 50 Steel
    -- 50 Artifacts
    -- 200 Blue Circuit
    
}
    
    
