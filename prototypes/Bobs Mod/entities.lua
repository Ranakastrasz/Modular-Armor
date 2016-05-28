function laser_turret_extension_dummy()
return
{
  filename = "__Modular-Armor__/graphics/null.png",
  priority = "medium",
  width = 0,
  height = 0,
  frame_count = 1,
  line_length = 1,
  run_mode = "forward",
  axially_symmetrical = false,
  direction_count = 1,
  shift = {0.0625, -0.984375}
}
end

function laser_turret_extension_shadow_dummy()
return
{
  filename = "__Modular-Armor__/graphics/null.png",
  width = 0,
  height = 0,
  frame_count = 1,
  line_length = 1,
  run_mode = "forward",
  axially_symmetrical = false,
  direction_count = 1,
  draw_as_shadow = false,
  shift = {1.46875, 0},
}
end

function laser_turret_extension_mask_dummy()
return
{
  filename = "__Modular-Armor__/graphics/null.png",
  width = 0,
  height = 0,
  frame_count = 1,
  line_length = 1,
  run_mode = "forward",
  axially_symmetrical = false,
  apply_runtime_tint = false,
  direction_count = 1,
  shift = {0.078125, -1.26563},
}
end



data:extend(
{
  {
    type = "electric-turret",
    name = "laser-turret-dummy",
    icon = "__Modular-Armor__/graphics/icons/power-conduit-equipment.png",
    flags = {"placeable-off-grid", "not-on-map"},
    --minable = { mining_time = 0.5, result = "laser-turret" },
    max_health = 0,
    --corpse = "medium-remnants",
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{0, 0}, {0, 0}},--{{ -1, -1}, {1, 1}},
    rotation_speed = 0.01,
    preparing_speed = 0.05,
    --dying_explosion = "medium-explosion",
    collision_mask = {"ghost-layer"},
    folding_speed = 0.05,
    energy_source =
    {
      type = "electric",
      buffer_capacity = "5000MJ",
      input_flow_limit = "5000MW",
      drain = "0kW",
      usage_priority = "primary-input"
    },
    folded_animation =
    {
      layers =
      {
        laser_turret_extension_dummy(),
        laser_turret_extension_shadow_dummy(),
        laser_turret_extension_mask_dummy()
      }
    },
    preparing_animation =
    {
      layers =
      {
        laser_turret_extension_dummy(),
        laser_turret_extension_shadow_dummy(),
        laser_turret_extension_mask_dummy()
      }
    },
    prepared_animation =
    {
      layers =
      {
        --[[{
          filename = "__Modular-Armor__/graphics/null.png",
          line_length = 1,
          width = 0,
          height = 0,
          frame_count = 1,
          axially_symmetrical = false,
          direction_count = 1,
          shift = {0.0625, -1}

        },
        {
          filename = "__Modular-Armor__/graphics/null.png",
          line_length = 1,
          width = 0,
          height = 0,
          frame_count = 1,
          axially_symmetrical = false,
          apply_runtime_tint = false,
          direction_count = 1,
          shift = {0.0625, -1.3125},
        },
        {
          filename = "__Modular-Armor__/graphics/null.png",
          line_length = 1,
          width = 0,
          height = 0,
          frame_count = 1,
          axially_symmetrical = false,
          direction_count = 1,
          draw_as_shadow = false,
          shift = {1.59375, 0}
        }]]--
      }
    },
    folding_animation = 
    {
      layers =
      {
        laser_turret_extension_dummy(),
        laser_turret_extension_shadow_dummy(),
        laser_turret_extension_mask_dummy()
      }
    },
    base_picture =
    {
      layers =
      {
        --[[{
          filename = "__Modular-Armor__/graphics/null.png",
          priority = "high",
          width = 1,
          height = 1,
          axially_symmetrical = false,
          direction_count = 1,
          shift = { 0.109375, 0.03125 }
        },
        {
          filename = "__Modular-Armor__/graphics/null.png",
          line_length = 1,
          width = 1,
          height = 1,
          frame_count = 1,
          axially_symmetrical = false,
          apply_runtime_tint = false,
          direction_count = 1,
          shift = {0.046875, -0.109375},
        },]]--
      }
    },
    --vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "electric",
      cooldown = 20,
      projectile_center = {0, -0.2},
      projectile_creation_distance = 1.4,
      range = 0,
      damage_modifier = 0,
      ammo_type =
      {
        type = "projectile",
        category = "laser-turret",
        energy_consumption = "500MJ",
        action =
        {
          {
            type = "direct",
            action_delivery =
            {
              {
                type = "projectile",
                projectile = "laser",
                starting_speed = 0.28
              }
            }
          }
        }
      },
      sound = make_laser_sounds()
    }
  },


    {
        type = "accumulator",
        name = "modular-accumulator-dummy",
        icon = "__Modular-Armor__/graphics/icons/power-conduit-equipment.png",
        flags = {"placeable-off-grid", "not-on-map"},
        -- minable = {hardness = 0.2, mining_time = 0.5, result = "basic-accumulator"},
        max_health = 0,
        destructible = true,
        -- corpse = "medium-remnants",`
        collision_box = {{0, 0}, {0, 0}},
        selection_box = {{ -1, -1}, {1, 1}},
        collision_mask = {"ghost-layer"},
        energy_source =
        {
            type = "electric",
            buffer_capacity = "5MJ",
            usage_priority = "primary-input",
            input_flow_limit = "5MW",
            output_flow_limit = "0kW"
        },
        
        picture =
        {
            filename = "__Modular-Armor__/graphics/null.png",
            priority = "extra-high",
            width = 0,
            height = 0,
            shift = {0, 0}
        },
        --[[charge_animation =
        {
            filename = "__base__/graphics/entity/basic-accumulator/basic-accumulator-charge-animation.png",
            width = 138,
            height = 135,
            line_length = 8,
            frame_count = 24,
            shift = {0.482, -0.638},
            animation_speed = 0.5
        },]]--
        charge_cooldown = 30,
        --charge_light = {intensity = 0.3, size = 7},
        --[[discharge_animation =
        {
            filename = "__base__/graphics/entity/basic-accumulator/basic-accumulator-discharge-animation.png",
            width = 147,
            height = 128,
            line_length = 8,
            frame_count = 24,
            shift = {0.395, -0.525},
            animation_speed = 0.5
        },]]--
        discharge_cooldown = 60,
        --discharge_light = {intensity = 0.7, size = 7},
        --working_sound = nil
        --[[{
            sound =
            {
                filename = "__base__/sound/accumulator-working.ogg",
                volume = 1
            },
            idle_sound =
            {
                filename = "__base__/sound/accumulator-idle.ogg",
                volume = 0.4
            },
            max_sounds_per_type = 5
        },]]--
    },



    {
        type = "electric-pole",
        name = "electric-pole-dummy",
        icon = "__Modular-Armor__/graphics/icons/power-conduit-equipment.png",
        flags = {"placeable-off-grid", "not-on-map"},
        --minable = {hardness = 0.2, mining_time = 0.5, result = "small-electric-pole"},
        max_health = 0,
        --corpse = "small-remnants",
        collision_box = {{0, 0}, {0, 0}},
        selection_box = {{0, 0}, {0, 0}},--{{ -1, -1}, {1, 1}},
        collision_mask = {"ghost-layer"},
        --drawing_box = {{-0.5, -2.3}, {0.5, 0.5}},
        maximum_wire_distance = 0,--7.5,
        supply_area_distance = 0.5,--2.5,
        --vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
        pictures =
        {
            filename = "__Modular-Armor__/graphics/null.png",
            priority = "extra-high",
            width = 0,
            height = 0,
            direction_count =1,
            shift = {0, 0}
        },
    connection_points =
        {
          {
            shadow =
            {
              copper = {2.7, 0},
              red = {2.3, 0},
              green = {3.1, 0}
            },
            wire =
            {
              copper = {0, -2.7},
              red = {-0.4,-2.7},
              green = {0.4,-2.7}
            }
          }
        },
        radius_visualisation_picture =
        {
          filename = "__base__/graphics/entity/small-electric-pole/electric-pole-radius-visualization.png",
          width = 12,
          height = 12,
          priority = "extra-high-no-scale"
        }
  },
  {
    type = "solar-panel",
    name = "solar-panel-dummy",
    icon = "__Modular-Armor__/graphics/icons/power-conduit-equipment.png",
    flags = {"placeable-off-grid", "not-on-map"},
    --minable = {hardness = 0.2, mining_time = 0.5, result = "solar-panel"},
    max_health = 0,
    --corpse = "big-remnants",
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{0, 0}, {0, 0}},--{{ -1, -1}, {1, 1}},
    collision_mask = {"ghost-layer"},
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture =
    {
        filename = "__Modular-Armor__/graphics/null.png",
        priority = "extra-high",
        width = 0,
        height = 0,
        shift = {0, 0}
    },
    production = "0kW"
  }
})