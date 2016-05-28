data:extend(
{
  {
    type = "item",
    name = "basic-electric-discharge-defense-equipment",
    icon = "__base__/graphics/icons/basic-electric-discharge-defense-equipment.png",
    placed_as_equipment_result = "basic-electric-discharge-defense-equipment",
    flags = {"goes-to-main-inventory"},
    subgroup = "equipment",
    order = "d[active-defense]-b[basic-electric-discharge-defense-equipment]",
    stack_size = 20
  },
}
)


data:extend(
{
  {
    type = "recipe",
    name = "basic-electric-discharge-defense-equipment",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"processing-unit", 5},
      {"steel-plate", 20},
      {"laser-turret", 10}
    },
    result = "basic-electric-discharge-defense-equipment"
  },
}
)


data:extend(
{
  {
    type = "active-defense-equipment",
    name = "basic-electric-discharge-defense-equipment",
    ability_icon =
    {
      filename = "__base__/graphics/equipment/basic-electric-discharge-defense-equipment-ability.png",
      width = 32,
      height = 32,
      priority = "medium"
    },
    sprite = 
    {
      filename = "__base__/graphics/equipment/basic-electric-discharge-defense-equipment.png",
      width = 96,
      height = 96,
      priority = "medium"
    },
    shape =
    {
      width = 3,
      height = 3,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      buffer_capacity = "4040J"
    },
    attack_parameters =
    {
      ammo_category = "electric",
      damage_modifier = 3,
      cooldown = 150,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.6,
      range = 10,
      sound =
      {
        {
          filename = "__base__/sound/laser.ogg",
          volume = 0.4
        }
      },
      ammo_type =
      {
        type = "projectile",
        category = "electric",
        energy_consumption = "2KJ",
        speed = 1,
        action = 
        {
          {
            type = "area",
            perimeter = 10,
            force = "enemy",
            action_delivery =
            {
              {
                type = "projectile",
                projectile = "blue-laser",
                starting_speed = 0.28
              }
            }
          }
        }
      },
    },
    automatic = false
  },
}
)


data:extend(
{
  {
    type = "technology",
    name = "basic-electric-discharge-defense-equipment",
    icon = "__base__/graphics/technology/basic-electric-discharge-defense-equipment.png",
    prerequisites = {"armor-making-3", "alien-technology", "laser-turrets"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "basic-electric-discharge-defense-equipment",
      },
      {
        type = "unlock-recipe",
        recipe = "basic-electric-discharge-defense-remote"
      }
    },
    unit =
    {
      count = 100,
      ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, {"alien-science-pack", 1}},
      time = 30
    },
    order = "g-o"
  },
}
)

