data:extend(
{
  {
    type = "combat-robot",
    name = "bob-laser-robot",
    icon = "__base__/graphics/icons/logistic-robot.png",
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {hardness = 0.1, mining_time = 0.1, result = "bob-laser-robot"},
    max_health = 100,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    speed = 0.05,

    follows_player = true,
    friction = 0.01,
    range_from_player = 6.0,
    distance_per_frame = 0.13,

    time_to_live = 60 * 60 * 60 * 24,
--    destroy_action =
--    {
--      type = "direct",
--      action_delivery =
--      {
--        type = "instant",
--        source_effects =
--        {
--            type = "create-entity",
--            entity_name = "explosion"
--        }
--      }
--    },

    attack_parameters =
    {
      ammo_category = "combat-robot-laser",
      cooldown = 20,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.6,
      range = 15,
      sound =
      {
        {
          filename = "__base__/sound/laser.ogg",
          volume = 0.4
        }
      },
      ammo_type =
      {
        category = "combat-robot-laser",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "projectile",
            projectile = "blue-laser",
            starting_speed = 0.3
          }
        }
      }
    },

    picture =
    {
      filename = "__base__/graphics/entity/combat-robot/distractor.png",
      priority = "high",
      width = 37,
      height = 34
    },
    working_sound = flying_robot_sounds(),
    shadow =
    {
      filename = "__base__/graphics/entity/combat-robot/combat-robot-shadow.png",
      priority = "high",
      width = 52,
      height = 37
    },
  },


  {
    type = "item",
    name = "bob-laser-robot",
    icon = "__base__/graphics/icons/logistic-robot.png",
    flags = {"goes-to-quickbar"},
    subgroup = "logistic-network",
    order = "a[robot]-a[bob-laser-robot]",
    place_result = "bob-laser-robot",
    stack_size = 50
  },


  {
    type = "recipe",
    name = "bob-laser-robot",
--    enabled = "false",
    ingredients =
    {
      {"flying-robot-frame", 1},
      {"advanced-circuit", 2},
      {"laser-turret", 1},
    },
    result = "bob-laser-robot"
  },


}
)
