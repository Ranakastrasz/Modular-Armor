data.raw.recipe["energy-shield-mk2-equipment"].ingredients = {{"energy-shield-equipment", 2}, {"processing-unit", 5}}

data:extend(
{
  {
    type = "recipe",
    name = "energy-shield-mk3-equipment",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"energy-shield-mk2-equipment", 2},
      {"advanced-processing-unit", 5},
      {"alien-artifact", 10},
      {"productivity-module-2", 1},
    },
    result = "energy-shield-mk3-equipment"
  },
  {
    type = "recipe",
    name = "energy-shield-mk4-equipment",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"energy-shield-mk3-equipment", 2},
      {"advanced-processing-unit", 5},
      {"effectivity-module-3", 1},
      {"productivity-module-3", 1},

    },
    result = "energy-shield-mk4-equipment"
  },
  {
    type = "recipe",
    name = "energy-shield-mk5-equipment",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"energy-shield-mk4-equipment", 2},
      {"advanced-processing-unit", 5},
      {"effectivity-module-3", 1},
      {"productivity-module-3", 1},
    },
    result = "energy-shield-mk5-equipment"
  },
  {
    type = "recipe",
    name = "energy-shield-mk6-equipment",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"energy-shield-mk5-equipment", 2},
      {"advanced-processing-unit", 5},
      {"effectivity-module-3", 1},
      {"productivity-module-3", 1},
    },
    result = "energy-shield-mk6-equipment"
  },
}
)


data.raw.recipe["battery-mk2-equipment"].ingredients = {{"battery-equipment", 2}, {"processing-unit", 5}}

data:extend(
{
  {
    type = "recipe",
    name = "battery-mk3-equipment",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"battery-mk2-equipment", 2},
      {"lithium-ion-battery", 5},
    },
    result = "battery-mk3-equipment"
  },
  {
    type = "recipe",
    name = "battery-mk4-equipment",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"battery-mk3-equipment", 2},
      {"advanced-processing-unit", 5}
    },
    result = "battery-mk4-equipment"
  },
  {
    type = "recipe",
    name = "battery-mk5-equipment",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"battery-mk4-equipment", 2},
      {"silver-zinc-battery", 5}
    },
    result = "battery-mk5-equipment"
  },
  {
    type = "recipe",
    name = "battery-mk6-equipment",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"battery-mk5-equipment", 2},
      {"advanced-processing-unit", 5}
    },
    result = "battery-mk6-equipment"
  },
}
)


data:extend(
{
  {
    type = "recipe",
    name = "fusion-reactor-equipment-2",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"fusion-reactor-equipment", 1},
      {"advanced-processing-unit", 50},
      {"effectivity-module-3", 2},
      {"speed-module-3", 2},
      {"productivity-module-3", 2},
    },
    result = "fusion-reactor-equipment-2"
  },
  {
    type = "recipe",
    name = "fusion-reactor-equipment-3",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"fusion-reactor-equipment-2", 1},
      {"advanced-processing-unit", 50},
      {"effectivity-module-3", 2},
      {"speed-module-3", 2},
      {"productivity-module-3", 2},
    },
    result = "fusion-reactor-equipment-3"
  },
  {
    type = "recipe",
    name = "fusion-reactor-equipment-4",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"fusion-reactor-equipment-3", 1},
      {"advanced-processing-unit", 50},
      {"effectivity-module-3", 2},
      {"speed-module-3", 2},
      {"productivity-module-3", 2},
    },
    result = "fusion-reactor-equipment-4"
  },
}
)


data:extend(
{
  {
    type = "recipe",
    name = "night-vision-equipment-2",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"night-vision-equipment", 1},
      {"processing-unit", 5},
      {"glass", 2},
    },
    result = "night-vision-equipment-2"
  },
  {
    type = "recipe",
    name = "night-vision-equipment-3",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"night-vision-equipment-2", 1},
      {"advanced-processing-unit", 5},
      {"diamond-5", 2},
      {"alien-artifact", 10},
    },
    result = "night-vision-equipment-3"
  },
}
)


data.raw.recipe["solar-panel-equipment"].ingredients = {{"steel-plate", 2}, {"electronic-circuit", 5}, {"copper-cable", 4}}

data:extend(
{
  {
    type = "recipe",
    name = "solar-panel-equipment-2",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"solar-panel-equipment", 1},
      {"glass", 2},
      {"advanced-circuit", 5},
      {"silver-plate", 2},
    },
    result = "solar-panel-equipment-2"
  },
  {
    type = "recipe",
    name = "solar-panel-equipment-3",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"solar-panel-equipment-2", 1},
      {"titanium-plate", 2},
      {"silicon-wafer", 8},
      {"processing-unit", 5},
      {"gold-plate", 2},
    },
    result = "solar-panel-equipment-3"
  },
  {
    type = "recipe",
    name = "solar-panel-equipment-4",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"solar-panel-equipment-3", 1},
      {"nitinol-alloy", 2},
      {"alien-artifact", 10},
      {"advanced-processing-unit", 5},
      {"copper-cable", 5},
    },
    result = "solar-panel-equipment-4"
  },
}
)

data.raw.recipe["basic-laser-defense-equipment"].ingredients = {{"steel-plate", 5}, {"electronic-circuit", 5}, {"battery", 3}}

data:extend(
{
  {
    type = "recipe",
    name = "basic-laser-defense-equipment-2",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"basic-laser-defense-equipment", 1},
      {"steel-plate", 5},
      {"advanced-circuit", 5},
      {"sapphire-5", 1}
    },
    result = "basic-laser-defense-equipment-2"
  },
  {
    type = "recipe",
    name = "basic-laser-defense-equipment-3",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"basic-laser-defense-equipment-2", 1},
      {"invar-alloy", 5},
      {"emerald-5", 1},
      {"lithium-ion-battery", 3}
    },
    result = "basic-laser-defense-equipment-3"
  },
  {
    type = "recipe",
    name = "basic-laser-defense-equipment-4",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"basic-laser-defense-equipment-3", 1},
      {"titanium-plate", 5},
      {"processing-unit", 5},
      {"lithium-ion-battery", 3},
      {"amethyst-5", 1},
    },
    result = "basic-laser-defense-equipment-4"
  },
  {
    type = "recipe",
    name = "basic-laser-defense-equipment-5",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"basic-laser-defense-equipment-4", 1},
      {"nitinol-alloy", 5},
      {"processing-unit", 5},
      {"silver-zinc-battery", 3},
      {"topaz-5", 1},
    },
    result = "basic-laser-defense-equipment-5"
  },
  {
    type = "recipe",
    name = "basic-laser-defense-equipment-6",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"basic-laser-defense-equipment-5", 1},
      {"advanced-processing-unit", 5},
      {"silver-zinc-battery", 3},
      {"diamond-5", 1},
    },
    result = "basic-laser-defense-equipment-6"
  },
}
)


data:extend(
{
  {
    type = "recipe",
    name = "basic-exoskeleton-equipment-2",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"basic-exoskeleton-equipment", 1},
      {"advanced-processing-unit", 10},
      {"titanium-gear-wheel", 30},
      {"titanium-bearing", 30},
      {"titanium-plate", 20},
    },
    result = "basic-exoskeleton-equipment-2"
  },
  {
    type = "recipe",
    name = "basic-exoskeleton-equipment-3",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"basic-exoskeleton-equipment-2", 1},
      {"advanced-processing-unit", 10},
      {"nitinol-gear-wheel", 30},
      {"nitinol-bearing", 30},
      {"nitinol-alloy", 20},
      {"alien-artifact", 10},
    },
    result = "basic-exoskeleton-equipment-3"
  },
}
)

