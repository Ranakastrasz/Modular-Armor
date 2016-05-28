data:extend(
{
  {
    type = "recipe",
    name = "bob-gun-turret-2",
    enabled = "false",
    energy_required = 5,
    ingredients =
    {
      {"gun-turret", 1},
      {"steel-gear-wheel", 10},
      {"steel-plate", 20}
    },
    result = "bob-gun-turret-2"
  },
  {
    type = "recipe",
    name = "bob-gun-turret-3",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"bob-gun-turret-2", 1},
      {"brass-gear-wheel", 10},
      {"steel-bearing", 10},
      {"invar-alloy", 20}
    },
    result = "bob-gun-turret-3"
  },
  {
    type = "recipe",
    name = "bob-gun-turret-4",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"bob-gun-turret-3", 1},
      {"titanium-gear-wheel", 10},
      {"titanium-bearing", 10},
      {"titanium-plate", 20}
    },
    result = "bob-gun-turret-4"
  },
  {
    type = "recipe",
    name = "bob-gun-turret-5",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"bob-gun-turret-4", 1},
      {"nitinol-gear-wheel", 10},
      {"nitinol-bearing", 10},
      {"nitinol-alloy", 20}
    },
    result = "bob-gun-turret-5"
  },

  {
    type = "recipe",
    name = "bob-sniper-turret-1",
    enabled = "false",
    energy_required = 20,
    ingredients =
    {
      {"iron-gear-wheel", 20},
      {"copper-plate", 20},
      {"iron-plate", 20}
    },
    result = "bob-sniper-turret-1"
  },
  {
    type = "recipe",
    name = "bob-sniper-turret-2",
    enabled = "false",
    energy_required = 20,
    ingredients =
    {
      {"bob-sniper-turret-1", 1},
      {"steel-gear-wheel", 20},
      {"steel-bearing", 20},
      {"steel-plate", 20},
      {"invar-alloy", 20}
    },
    result = "bob-sniper-turret-2"
  },
  {
    type = "recipe",
    name = "bob-sniper-turret-3",
    enabled = "false",
    energy_required = 20,
    ingredients =
    {
      {"bob-sniper-turret-2", 1},
      {"titanium-gear-wheel", 20},
      {"nitinol-bearing", 20},
      {"titanium-plate", 20},
      {"nitinol-alloy", 20}
    },
    result = "bob-sniper-turret-3"
  },

  {
    type = "recipe",
    name = "bob-laser-turret-2",
    enabled = "false",
    energy_required = 20,
    ingredients =
    {
      {"laser-turret", 1},
      {"steel-plate", 20},
      {"advanced-circuit", 20},
      {"sapphire-5", 1}
    },
    result = "bob-laser-turret-2"
  },
  {
    type = "recipe",
    name = "bob-laser-turret-3",
    enabled = "false",
    energy_required = 20,
    ingredients =
    {
      {"bob-laser-turret-2", 1},
      {"invar-alloy", 20},
      {"emerald-5", 1},
      {"lithium-ion-battery", 12}
    },
    result = "bob-laser-turret-3"
  },
  {
    type = "recipe",
    name = "bob-laser-turret-4",
    enabled = "false",
    energy_required = 20,
    ingredients =
    {
      {"bob-laser-turret-3", 1},
      {"titanium-plate", 20},
      {"processing-unit", 20},
      {"lithium-ion-battery", 12},
      {"topaz-5", 1},
    },
    result = "bob-laser-turret-4"
  },
  {
    type = "recipe",
    name = "bob-laser-turret-5",
    enabled = "false",
    energy_required = 20,
    ingredients =
    {
      {"bob-laser-turret-4", 1},
      {"nitinol-alloy", 20},
      {"advanced-processing-unit", 20},
      {"silver-zinc-battery", 12},
      {"diamond-5", 1},
    },
    result = "bob-laser-turret-5"
  },
}
)
