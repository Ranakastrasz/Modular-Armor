data:extend(
{
    {
        type = "recipe",
        name = "solar-panel-equipment-2",
        enabled = "false",
        energy_required = 10,
        ingredients =
        {
            {"solar-panel-equipment", 10},
            {"processing-unit", 10},
            {"productivity-module", 1},
        },
        result = "solar-panel-equipment-2"
    },
    {
        type = "recipe",
        name = "actuator-equipment",
        enabled = "false",
        energy_required = 10,
        ingredients =
        {
            {"advanced-circuit", 5},
            {"engine-unit", 5},
            {"steel-plate", 5},
        },
        result = "actuator-equipment"
    },
    {
        type = "recipe",
        name = "semiconductor-conduit-equipment",
        enabled = "true",
        energy_required = 10,
        ingredients =
        {
            {"medium-electric-pole", 10},
            {"advanced-circuit", 5},
        },
        result = "semiconductor-conduit-equipment"
    },
    {
        type = "recipe",
        name = "superconductor-conduit-equipment",
        enabled = "true",
        energy_required = 10,
        ingredients =
        {
            {"semiconductor-conduit-equipment", 10},
            {"substation", 10},
            {"processing-unit", 15},
            {"effectivity-module-2", 1},
        },
        result = "superconductor-conduit-equipment"
    },
    {
        type = "recipe",
        name = "engine-equipment",
        enabled = "false",
        energy_required = 10,
        ingredients =
        {
            {"engine-unit", 10},
            {"processing-unit", 5},
            {"steel-plate", 5},
            {"productivity-module", 1},
        },
        result = "engine-equipment"
    },
    --[[{
        type = "recipe",
        name = "alien-fuel",
        enabled = "false",
        energy_required = 5,
        ingredients =
        {
            {"alien-artifact", 1},
            {"solid-fuel", 1},
        },
        result = "alien-fuel",
        result_count = 1
    },]]--
    --[[{
        type = "recipe",
        name = "alien-rocket-fuel",
        enabled = "false",
        energy_required = 30,
        ingredients =
        {
            {"alien-artifact", 1},
            {"rocket-fuel", 3},
        },
        result = "alien-fuel",
        result_count = 3
    },]]--
  
    {
        type = "recipe",
        name = "electrostatic-shield-equipment",
        enabled = false,
        energy_required = 10,
        ingredients =
        {
            {"electronic-circuit", 10},
            {"steel-plate", 4},
            {"copper-cable", 10},
        },
        result = "electrostatic-shield-equipment"
    },
    {
        type = "recipe",
        name = "battery-equipment",
        enabled = false,
        energy_required = 10,
        ingredients =
        {
            {"battery", 10},
            {"electronic-circuit", 10},
            {"steel-plate", 5},
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
            {"battery-equipment", 10},
            {"advanced-circuit", 10},
            {"effectivity-module", 1},
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
            {"battery-mk2-equipment", 10},
            {"processing-unit", 10},
            {"effectivity-module-2", 1},
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
            {"effectivity-module-3", 1},
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
            {"power-armor-mk2", 1},
            {"effectivity-module-3", 20},
            {"speed-module-3", 20},
            {"productivity-module-3", 20},
            {"electric-engine-unit", 200},
			{"processing-unit", 200},
            
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
            {"power-armor-mk3", 1},
            {"effectivity-module-3",100},
            {"speed-module-3", 100},
            {"productivity-module-3",100},
            {"electric-engine-unit", 500},
			{"processing-unit", 1000},
            
        },
        result = "power-armor-mk4"
    },
})

data.raw["recipe"]["exoskeleton-equipment"].ingredients =
{
    {"actuator-equipment", 10},
    {"electric-engine-unit", 30},
    {"processing-unit", 10},
    {"speed-module"   , 1},
}

data.raw["recipe"]["solar-panel-equipment"].ingredients =
{
    {"solar-panel", 5},
    {"advanced-circuit", 5},
    {"steel-plate", 5},
}

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
      {"electrostatic-shield-equipment", 10},
      {"advanced-circuit" , 5},
      {"steel-plate"      ,10},
      {"speed-module"   , 1},
}
data.raw["recipe"]["energy-shield-mk2-equipment"].ingredients = 
{
      {"energy-shield-equipment", 10},
      {"processing-unit", 15},
      {"speed-module-3"  , 1},
}
data.raw["recipe"]["fusion-reactor-equipment"].ingredients = 
{
      {"energy-shield-equipment",10},
      {"processing-unit", 200},
      {"steel-plate"  ,200},
      {"productivity-module-2"  , 2},
}

----
data.raw["recipe"]["heavy-armor"].ingredients =
{
    {"light-armor",1},
    {"copper-plate", 100},
    {"steel-plate", 40}, -- 50
}

data.raw["recipe"]["modular-armor"].ingredients =
{
    { "heavy-armor", 1},
    { "advanced-circuit", 30},
    
    -- 50 Steel
    -- 30 Red Circuit
}

data.raw["recipe"]["power-armor"].ingredients =
{

    {"modular-armor", 1},
    {"processing-unit", 50},
    {"electric-engine-unit", 20},
    {"speed-module", 10},
    -- 100 steel
    -- 10 artifact
    -- 30 Engine
    -- 100 Blue circuit
}

data.raw["recipe"]["power-armor-mk2"].ingredients =
{
    {"power-armor", 1},
    {"effectivity-module-2", 10},
    {"speed-module-2", 10},
    {"processing-unit", 150},
    {"electric-engine-unit", 50},
    
    -- 5 T3 Speed module
    -- 5 T3 Efficiency Module
    -- 50 Steel
    -- 50 Artifacts
    -- 200 Blue Circuit
    
}
    
    
