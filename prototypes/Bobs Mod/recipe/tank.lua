data:extend(
{
  {
    type = "recipe",
    name = "tank-2",
    enabled = false,
    ingredients =
    {
      {"tank", 1},
--      {"engine-unit", 16},
      {"titanium-plate", 50},
      {"titanium-gear-wheel", 15},
      {"titanium-bearing", 15},
      {"processing-unit", 5}
    },
    result = "tank-2"
  },

  {
    type = "recipe",
    name = "tank-3",
    enabled = false,
    ingredients =
    {
      {"tank-2", 1},
--      {"engine-unit", 16},
      {"tungsten-carbide", 40},
      {"silicon-nitride", 40},
      {"nitinol-gear-wheel", 15},
      {"nitinol-bearing", 15},
      {"advanced-processing-unit", 5}
    },
    result = "tank-3"
  },
}
)



