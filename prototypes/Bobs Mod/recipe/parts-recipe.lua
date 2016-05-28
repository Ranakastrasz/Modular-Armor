if data.raw.item["synthetic-wood"] then data:extend(
{
  {
    type = "recipe",
    name = "gun-cotton-synthetic",
    category = "crafting-with-fluid",
    subgroup = "bob-resource",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {type="fluid", name="nitric-acid", amount=1},
      {"synthetic-wood", 1},
    },
    result = "gun-cotton",
    result_count = 1,
  },
}
)
end

data:extend(
{ 
  {
    type = "recipe",
    name = "petroleum-jelly",
    category = "chemistry",
    subgroup = "bob-resource-chemical",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {type="fluid", name="heavy-oil", amount=1},
    },
    result = "petroleum-jelly",
    result_count = 1,
  },

  {
    type = "recipe",
    name = "gun-cotton",
    category = "crafting-with-fluid",
    subgroup = "bob-resource",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {type="fluid", name="nitric-acid", amount=1},
      {"wood", 1},
    },
    result = "gun-cotton",
    result_count = 1,
  },

  {
    type = "recipe",
    name = "cordite",
    category = "crafting-with-fluid",
    subgroup = "bob-ammo-parts",
    energy_required = 10,
    enabled = "false",
    ingredients =
    {
      {type="fluid", name="nitroglycerin", amount=6},
      {"gun-cotton", 13},
      {"petroleum-jelly", 1},
    },
    result = "cordite",
    result_count = 5,
  },


  {
    type = "recipe",
    name = "bullet-casing",
    subgroup = "bob-ammo-parts",
    energy_required = 0.5,
    enabled = "false",
    ingredients =
    {
      {"gunmetal-alloy", 1},
    },
    result = "bullet-casing",
    result_count = 1,
  },

  {
    type = "recipe",
    name = "magazine",
    subgroup = "bob-ammo-parts",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {"steel-plate", 1},
    },
    result = "magazine",
    result_count = 2,
  },


  {
    type = "recipe",
    name = "bullet-projectile",
    subgroup = "bob-ammo-parts",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {"copper-plate", 1},
      {"lead-plate", 1},
    },
    result = "bullet-projectile",
    result_count = 2,
  },

  {
    type = "recipe",
    name = "bullet",
    subgroup = "bob-ammo-parts",
    energy_required = 0.1,
    enabled = "false",
    ingredients =
    {
      {"bullet-casing", 1},
      {"bullet-projectile", 1},
      {"cordite", 1},
    },
    result = "bullet",
    result_count = 1,
  },


  {
    type = "recipe",
    name = "ap-bullet-projectile",
    subgroup = "bob-ammo-parts",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {"copper-plate", 1},
      {"tungsten-plate", 1},
    },
    result = "ap-bullet-projectile",
    result_count = 2,
  },

  {
    type = "recipe",
    name = "ap-bullet",
    subgroup = "bob-ammo-parts",
    energy_required = 0.1,
    enabled = "false",
    ingredients =
    {
      {"bullet-casing", 1},
      {"ap-bullet-projectile", 1},
      {"cordite", 1},
    },
    result = "ap-bullet",
    result_count = 1,
  },


  {
    type = "recipe",
    name = "he-bullet-projectile",
    subgroup = "bob-ammo-parts",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {"copper-plate", 1},
      {"explosives", 1},
    },
    result = "he-bullet-projectile",
    result_count = 2,
  },

  {
    type = "recipe",
    name = "he-bullet",
    subgroup = "bob-ammo-parts",
    energy_required = 0.1,
    enabled = "false",
    ingredients =
    {
      {"bullet-casing", 1},
      {"he-bullet-projectile", 1},
      {"cordite", 1},
    },
    result = "he-bullet",
    result_count = 1,
  },


  {
    type = "recipe",
    name = "flame-bullet-projectile",
    category = "chemistry",
    subgroup = "bob-ammo-parts",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {"copper-plate", 1},
      {type="fluid", name="light-oil", amount=0.5},
      {type="fluid", name="heavy-oil", amount=0.5}
    },
    result = "flame-bullet-projectile",
    result_count = 2,
  },

  {
    type = "recipe",
    name = "flame-bullet",
    subgroup = "bob-ammo-parts",
    energy_required = 0.1,
    enabled = "false",
    ingredients =
    {
      {"bullet-casing", 1},
      {"flame-bullet-projectile", 1},
      {"cordite", 1},
    },
    result = "flame-bullet",
    result_count = 1,
  },


  {
    type = "recipe",
    name = "acid-bullet-projectile",
    category = "crafting-with-fluid",
    subgroup = "bob-ammo-parts",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {"copper-plate", 1},
      {type="fluid", name="nitric-acid", amount=1},
    },
    result = "acid-bullet-projectile",
    result_count = 2,
  },

  {
    type = "recipe",
    name = "acid-bullet",
    subgroup = "bob-ammo-parts",
    energy_required = 0.1,
    enabled = "false",
    ingredients =
    {
      {"bullet-casing", 1},
      {"acid-bullet-projectile", 1},
      {"cordite", 1},
    },
    result = "acid-bullet",
    result_count = 1,
  },


  {
    type = "recipe",
    name = "poison-bullet-projectile",
    category = "crafting-with-fluid",
    subgroup = "bob-ammo-parts",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {"copper-plate", 1},
      {type="fluid", name="sulfuric-acid", amount=1},
    },
    result = "poison-bullet-projectile",
    result_count = 2,
  },

  {
    type = "recipe",
    name = "poison-bullet",
    subgroup = "bob-ammo-parts",
    energy_required = 0.1,
    enabled = "false",
    ingredients =
    {
      {"bullet-casing", 1},
      {"poison-bullet-projectile", 1},
      {"cordite", 1},
    },
    result = "poison-bullet",
    result_count = 1,
  },


  {
    type = "recipe",
    name = "impact-bullet-projectile",
    category = "crafting-with-fluid",
    subgroup = "bob-ammo-parts",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {"copper-plate", 1},
      {"steel-plate", 1},
    },
    result = "impact-bullet-projectile",
    result_count = 2,
  },

  {
    type = "recipe",
    name = "impact-bullet",
    subgroup = "bob-ammo-parts",
    energy_required = 0.1,
    enabled = "false",
    ingredients =
    {
      {"bullet-casing", 1},
      {"impact-bullet-projectile", 1},
      {"cordite", 1},
    },
    result = "impact-bullet",
    result_count = 1,
  },


  {
    type = "recipe",
    name = "shotgun-shell-casing",
    subgroup = "bob-ammo-parts",
    energy_required = 0.5,
    enabled = "false",
    ingredients =
    {
      {"gunmetal-alloy", 1},
    },
    result = "shotgun-shell-casing",
    result_count = 1,
  },

  {
    type = "recipe",
    name = "shot",
    subgroup = "bob-ammo-parts",
    energy_required = 0.5,
    enabled = "false",
    ingredients =
    {
      {"lead-plate", 1},
    },
    result = "shot",
    result_count = 1,
  },


  {
    type = "recipe",
    name = "laser-rifle-battery-case",
    subgroup = "bob-ammo-parts",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {"plastic-bar", 1},
    },
    result = "laser-rifle-battery-case",
    result_count = 2,
  },


  {
    type = "recipe",
    name = "rocket-engine",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {"tungsten-plate", 1},
    },
    result = "rocket-engine",
  },

  {
    type = "recipe",
    name = "rocket-body",
    category = "crafting-with-fluid",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {type="fluid", name="liquid-fuel", amount=1},
      {"rocket-engine", 1},
      {"processing-unit", 1},
      {"aluminium-plate", 1},
    },
    result = "rocket-body",
  },

  {
    type = "recipe",
    name = "rocket-warhead",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {"steel-plate", 1},
      {"explosives", 1},
    },
    result = "rocket-warhead",
  },

  {
    type = "recipe",
    name = "piercing-rocket-warhead",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {"steel-plate", 1},
      {"tungsten-plate", 2},
    },
    result = "piercing-rocket-warhead",
  },

  {
    type = "recipe",
    name = "impact-rocket-warhead",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {"steel-plate", 1},
      {"copper-plate", 2},
    },
    result = "impact-rocket-warhead",
  },

  {
    type = "recipe",
    name = "explosive-rocket-warhead",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {"steel-plate", 1},
      {"explosives", 2},
    },
    result = "explosive-rocket-warhead",
  },

  {
    type = "recipe",
    name = "acid-rocket-warhead",
    category = "crafting-with-fluid",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {"steel-plate", 1},
      {type="fluid", name="nitric-acid", amount=2},
    },
    result = "acid-rocket-warhead",
  },

  {
    type = "recipe",
    name = "flame-rocket-warhead",
    category = "chemistry",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {"steel-plate", 1},
      {type="fluid", name="light-oil", amount=1},
      {type="fluid", name="heavy-oil", amount=1}
    },
    result = "flame-rocket-warhead",
  },

  {
    type = "recipe",
    name = "poison-rocket-warhead",
    category = "crafting-with-fluid",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {"steel-plate", 1},
      {type="fluid", name="sulfuric-acid", amount=2},
    },
    result = "poison-rocket-warhead",
  },
}
)



