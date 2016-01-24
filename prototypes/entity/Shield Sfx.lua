data:extend(
{  
--[[	
  {
    type = "explosion",
    name = "explosion_green",
	flags = {"placeable-off-grid"},
    animation_speed = 2,
    animations =
    {
      {
        filename = "__Modular-Armor__/graphics/entity/explosion/explosion-1g.png",
        priority = "extra-high",
        width = 64,
        height = 59,
        frame_count = 16
      },
      {
        filename = "__Modular-Armor__/graphics/entity/explosion/explosion-2g.png",
        priority = "extra-high",
        width = 64,
        height = 57,
        frame_count = 16
      },
      {
        filename = "__Modular-Armor__/graphics/entity/explosion/explosion-3g.png",
        priority = "extra-high",
        width = 64,
        height = 49,
        frame_count = 16
      },
      {
        filename = "__Modular-Armor__/graphics/entity/explosion/explosion-4g.png",
        priority = "extra-high",
        width = 64,
        height = 51,
        frame_count = 16
      }
    },
    light = {intensity = 1, size = 20},
    smoke = "smoke-fast",
    smoke_count = 2,
    smoke_slow_down_factor = 1,
    sound =
    {
      {
        filename = "__base__/sound/explosion1.wav",
        volume = 0.8
      },
      {
        filename = "__base__/sound/explosion2.wav",
        volume = 0.8
      }
    }
  },      

  {
    type = "explosion",
    name = "shield-effect",
	flags = {"placeable-off-grid"},
    animation_speed = 2,
    animations =
    {
      {
        filename = "__Modular-Armor__/graphics/entity/shieldxsmall.png",
        priority = "extra-high",
        width = 96,
        height = 96,
        frame_count = 20
      }
    },
    light = {intensity = 0, size = 0},
    smoke = "smoke-fast",
    smoke_count = 0,
    smoke_slow_down_factor = 1,
    sound =
    {
      {
        filename = "__base__/sound/explosion1.wav",
        volume = 0.8
      },
      {
        filename = "__base__/sound/explosion2.wav",
        volume = 0.8
      }
    }
  },

  {
    type = "explosion",
    name = "shield-effect_start",
	flags = {"placeable-off-grid"},
    animation_speed = 2,
    animations =
    {
      {
        filename = "__Modular-Armor__/graphics/entity/shieldstartsmall.png",
        priority = "extra-high",
        width = 96,
        height = 96,
        frame_count = 7
      }
    },
    light = {intensity = 0, size = 0},
    smoke = "smoke-fast",
    smoke_count = 0,
    smoke_slow_down_factor = 1,
    sound =
    {
      {
        filename = "__base__/sound/explosion1.wav",
        volume = 0.8
      },
      {
        filename = "__base__/sound/explosion2.wav",
        volume = 0.8
      }
    }
  },
  {
    type = "explosion",
    name = "shield-effect_mid",
	flags = {"placeable-off-grid"},
    animation_speed = 0.1,
    animations =
    {
      {
        filename = "__Modular-Armor__/graphics/entity/shieldmidallsmallsrnk.png",
        priority = "extra-high",
        width = 48,
        height = 96,
        frame_count = 10
      }
    },
    light = {intensity = 0, size = 0},
    smoke = "smoke-fast",
    smoke_count = 0,
    smoke_slow_down_factor = 1,
    sound =
    {
      {
        filename = "__base__/sound/explosion1.wav",
        volume = 0.8
      },
      {
        filename = "__base__/sound/explosion2.wav",
        volume = 0.8
      }
    }
  },
  {
    type = "explosion",
    name = "shield-effect_end",
	flags = {"placeable-off-grid"},
    animation_speed = 2,
    animations =
    {
      {
        filename = "__Modular-Armor__/graphics/entity/shieldendsmall.png",
        priority = "extra-high",
        width = 96,
        height = 96,
        frame_count = 8
      }
    },
    light = {intensity = 0, size = 0},
    smoke = "smoke-fast",
    smoke_count = 0,
    smoke_slow_down_factor = 1,
    sound =
    {
      {
        filename = "__base__/sound/explosion1.wav",
        volume = 0.8
      },
      {
        filename = "__base__/sound/explosion2.wav",
        volume = 0.8
      }
    }
  },





--]]



  {
    type = "explosion",
    name = "shield-effect-1",
	flags = {"placeable-off-grid"},
    animation_speed = 2,
    animations =
    {
      {
        filename = "__Modular-Armor__/graphics/entity/shield/1.png",
        priority = "extra-high",
        width = 96,
        height = 96,
        frame_count = 2
      }
    },
    light = {intensity = 0, size = 0},
    smoke = "smoke-fast",
    smoke_count = 0,
    smoke_slow_down_factor = 1,

  },
  {
    type = "explosion",
    name = "shield-effect-2",
	flags = {"placeable-off-grid"},
    animation_speed = 2,
    animations =
    {
      {
        filename = "__Modular-Armor__/graphics/entity/shield/2.png",
        priority = "extra-high",
        width = 96,
        height = 96,
        frame_count = 2
      }
    },
    light = {intensity = 0, size = 0},
    smoke = "smoke-fast",
    smoke_count = 0,
    smoke_slow_down_factor = 1,

  },
  {
    type = "explosion",
    name = "shield-effect-3",
	flags = {"placeable-off-grid"},
    animation_speed = 2,
    animations =
    {
      {
        filename = "__Modular-Armor__/graphics/entity/shield/3.png",
        priority = "extra-high",
        width = 96,
        height = 96,
        frame_count = 2
      }
    },
    light = {intensity = 0, size = 0},
    smoke = "smoke-fast",
    smoke_count = 0,
    smoke_slow_down_factor = 1,

  },
  {
    type = "explosion",
    name = "shield-effect-4",
	flags = {"placeable-off-grid"},
    animation_speed = 2,
    animations =
    {
      {
        filename = "__Modular-Armor__/graphics/entity/shield/4.png",
        priority = "extra-high",
        width = 96,
        height = 96,
        frame_count = 2
      }
    },
    light = {intensity = 0, size = 0},
    smoke = "smoke-fast",
    smoke_count = 0,
    smoke_slow_down_factor = 1,

  },
  {
    type = "explosion",
    name = "shield-effect-5",
	flags = {"placeable-off-grid"},
    animation_speed = 2,
    animations =
    {
      {
        filename = "__Modular-Armor__/graphics/entity/shield/5.png",
        priority = "extra-high",
        width = 96,
        height = 96,
        frame_count = 2
      }
    },
    light = {intensity = 0, size = 0},
    smoke = "smoke-fast",
    smoke_count = 0,
    smoke_slow_down_factor = 1,

  },
  {
    type = "explosion",
    name = "shield-effect-6",
	flags = {"placeable-off-grid"},
    animation_speed = 2,
    animations =
    {
      {
        filename = "__Modular-Armor__/graphics/entity/shield/6.png",
        priority = "extra-high",
        width = 96,
        height = 96,
        frame_count = 2
      }
    },
    light = {intensity = 0, size = 0},
    smoke = "smoke-fast",
    smoke_count = 0,
    smoke_slow_down_factor = 1,

  },
  {
    type = "explosion",
    name = "shield-effect-7",
	flags = {"placeable-off-grid"},
    animation_speed = 2,
    animations =
    {
      {
        filename = "__Modular-Armor__/graphics/entity/shield/7.png",
        priority = "extra-high",
        width = 96,
        height = 96,
        frame_count = 2
      }
    },
    light = {intensity = 0, size = 0},
    smoke = "smoke-fast",
    smoke_count = 0,
    smoke_slow_down_factor = 1,

  },
  {
    type = "explosion",
    name = "shield-effect-8",
	flags = {"placeable-off-grid"},
    animation_speed = 2,
    animations =
    {
      {
        filename = "__Modular-Armor__/graphics/entity/shield/8.png",
        priority = "extra-high",
        width = 96,
        height = 96,
        frame_count = 2
      }
    },
    light = {intensity = 0, size = 0},
    smoke = "smoke-fast",
    smoke_count = 0,
    smoke_slow_down_factor = 1,

  },
  {
    type = "explosion",
    name = "shield-effect-9",
	flags = {"placeable-off-grid"},
    animation_speed = 2,
    animations =
    {
      {
        filename = "__Modular-Armor__/graphics/entity/shield/9.png",
        priority = "extra-high",
        width = 96,
        height = 96,
        frame_count = 2
      }
    },
    light = {intensity = 0, size = 0},
    smoke = "smoke-fast",
    smoke_count = 0,
    smoke_slow_down_factor = 1,

  },
  {
    type = "explosion",
    name = "shield-effect-10",
	flags = {"placeable-off-grid"},
    animation_speed = 2,
    animations =
    {
      {
        filename = "__Modular-Armor__/graphics/entity/shield/10.png",
        priority = "extra-high",
        width = 96,
        height = 96,
        frame_count = 2
      }
    },
    light = {intensity = 0, size = 0},
    smoke = "smoke-fast",
    smoke_count = 0,
    smoke_slow_down_factor = 1,

  },
  {
    type = "explosion",
    name = "shield-effect-11",
	flags = {"placeable-off-grid"},
    animation_speed = 2,
    animations =
    {
      {
        filename = "__Modular-Armor__/graphics/entity/shield/11.png",
        priority = "extra-high",
        width = 96,
        height = 96,
        frame_count = 2
      }
    },
    light = {intensity = 0, size = 0},
    smoke = "smoke-fast",
    smoke_count = 0,
    smoke_slow_down_factor = 1,

  },
  {
    type = "explosion",
    name = "shield-effect-12",
	flags = {"placeable-off-grid"},
    animation_speed = 2,
    animations =
    {
      {
        filename = "__Modular-Armor__/graphics/entity/shield/12.png",
        priority = "extra-high",
        width = 96,
        height = 96,
        frame_count = 2
      }
    },
    light = {intensity = 0, size = 0},
    smoke = "smoke-fast",
    smoke_count = 0,
    smoke_slow_down_factor = 1,

  },
  {
    type = "explosion",
    name = "shield-effect-13",
	flags = {"placeable-off-grid"},
    animation_speed = 2,
    animations =
    {
      {
        filename = "__Modular-Armor__/graphics/entity/shield/13.png",
        priority = "extra-high",
        width = 96,
        height = 96,
        frame_count = 2
      }
    },
    light = {intensity = 0, size = 0},
    smoke = "smoke-fast",
    smoke_count = 0,
    smoke_slow_down_factor = 1,

  },
  {
    type = "explosion",
    name = "shield-effect-14",
	flags = {"placeable-off-grid"},
    animation_speed = 2,
    animations =
    {
      {
        filename = "__Modular-Armor__/graphics/entity/shield/14.png",
        priority = "extra-high",
        width = 96,
        height = 96,
        frame_count = 2
      }
    },
    light = {intensity = 0, size = 0},
    smoke = "smoke-fast",
    smoke_count = 0,
    smoke_slow_down_factor = 1,

  },
  {
    type = "explosion",
    name = "shield-effect-15",
    flags = {"placeable-off-grid"},
    animation_speed = 2,
    animations =
    {
      {
        filename = "__Modular-Armor__/graphics/entity/shield/15.png",
        priority = "extra-high",
        width = 96,
        height = 96,
        frame_count = 2
      }
    },
    light = {intensity = 0, size = 0},
    smoke = "smoke-fast",
    smoke_count = 0,
    smoke_slow_down_factor = 1,

  },
  {
    type = "explosion",
    name = "shield-effect-16",
    flags = {"placeable-off-grid"},
    animation_speed = 2,
    animations =
    {
      {
        filename = "__Modular-Armor__/graphics/entity/shield/16.png",
        priority = "extra-high",
        width = 96,
        height = 96,
        frame_count = 2
      }
    },
    light = {intensity = 0, size = 0},
    smoke = "smoke-fast",
    smoke_count = 0,
    smoke_slow_down_factor = 1,

  },
  {
    type = "explosion",
    name = "shield-effect-17",
    flags = {"placeable-off-grid"},
    animation_speed = 2,
    animations =
    {
      {
        filename = "__Modular-Armor__/graphics/entity/shield/17.png",
        priority = "extra-high",
        width = 96,
        height = 96,
        frame_count = 2
      }
    },
    light = {intensity = 0, size = 0},
    smoke = "smoke-fast",
    smoke_count = 0,
    smoke_slow_down_factor = 1,

  },
  {
    type = "explosion",
    name = "shield-effect-18",
    flags = {"placeable-off-grid"},
    animation_speed = 2,
    animations =
    {
      {
        filename = "__Modular-Armor__/graphics/entity/shield/18.png",
        priority = "extra-high",
        width = 96,
        height = 96,
        frame_count = 2
      }
    },
    light = {intensity = 0, size = 0},
    smoke = "smoke-fast",
    smoke_count = 0,
    smoke_slow_down_factor = 1,

  },
  {
    type = "explosion",
    name = "shield-effect-19",
    flags = {"placeable-off-grid"},
    animation_speed = 2,
    animations =
    {
      {
        filename = "__Modular-Armor__/graphics/entity/shield/19.png",
        priority = "extra-high",
        width = 96,
        height = 96,
        frame_count = 2
      }
    },
    light = {intensity = 0, size = 0},
    smoke = "smoke-fast",
    smoke_count = 0,
    smoke_slow_down_factor = 1,

  },
  {
    type = "explosion",
    name = "shield-effect-20",
    flags = {"placeable-off-grid"},
    animation_speed = 2,
    animations =
    {
      {
        filename = "__Modular-Armor__/graphics/entity/shield/20.png",
        priority = "extra-high",
        width = 96,
        height = 96,
        frame_count = 2
      }
    },
    light = {intensity = 0, size = 0},
    smoke = "smoke-fast",
    smoke_count = 0,
    smoke_slow_down_factor = 1,

  },

--[[
  {
    type = "explosion",
    name = "cros",
    flags = {"placeable-off-grid"},
    animation_speed = 2,
    animations =
    {
      {
        filename = "__Modular-Armor__/graphics/entity/cros.png",
        priority = "extra-high",
        width = 64,
        height = 64,
        frame_count = 1
      }
    },
    light = {intensity = 0, size = 0},
    smoke = "smoke-fast",
    smoke_count = 0,
    smoke_slow_down_factor = 1,

  }
--]]

}
)
