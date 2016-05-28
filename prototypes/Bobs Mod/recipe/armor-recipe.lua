data:extend(
{
  {
    type = "recipe",
    name = "heavy-armor-2",
    enabled = "false",
    energy_required = 8,
    ingredients =
    {
      {"invar-alloy", 50},
      {"cobalt-steel-alloy", 50},
    },
    result = "heavy-armor-2"
  },

  {
    type = "recipe",
    name = "heavy-armor-3",
    enabled = "false",
    energy_required = 8,
    ingredients =
    {
      {"titanium-plate", 50},
      {"silicon-nitride", 50},
    },
    result = "heavy-armor-3"
  },


  {
    type = "recipe",
    name = "bob-power-armor-mk3",
    enabled = "false",
    energy_required = 30,
    ingredients =
    {
      {"power-armor-mk2", 1},
      {"processing-unit", 50},
      {"aluminium-plate", 25},
      {"invar-alloy", 25},
      {"effectivity-module-3", 5},
      {"speed-module-3", 5},
    },
    result = "bob-power-armor-mk3"
  },
  {
    type = "recipe",
    name = "bob-power-armor-mk4",
    enabled = "false",
    energy_required = 30,
    ingredients =
    {
      {"bob-power-armor-mk3", 1},
      {"processing-unit", 40},
      {"advanced-processing-unit", 20},
      {"titanium-plate", 25},
      {"silicon-nitride", 25},
      {"effectivity-module-3", 5},
      {"speed-module-3", 5},
    },
    result = "bob-power-armor-mk4"
  },
  {
    type = "recipe",
    name = "bob-power-armor-mk5",
    enabled = "false",
    energy_required = 30,
    ingredients =
    {
      {"bob-power-armor-mk4", 1},
      {"processing-unit", 50},
      {"advanced-processing-unit", 50},
      {"copper-tungsten-alloy", 25},
      {"nitinol-alloy", 25},
      {"effectivity-module-3", 5},
      {"speed-module-3", 5},
    },
    result = "bob-power-armor-mk5"
  },
}
)


