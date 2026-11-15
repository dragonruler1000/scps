require("util")

function scp_682_run_animation(scale, tint1, tint2)
  return
  {
    layers=
    {
      util.sprite_load("__scps__/graphics/entity/682/682-run",
        {
          slice = 1,
          frame_count = 1,
          direction_count = 1,
          scale = scale * 5,
          multiply_shift = scale,
          allow_forced_downscale = true,
          surface = "nauvis",
          usage = "enemy",
        }
      ),
    }
  }
end

function scp_682_attack_animation(scale, tint1, tint2)
  return
  {
    layers=
    {
      util.sprite_load("__scps__/graphics/entity/682/682-run",
        {
          slice = 1,
          frame_count = 1,
          direction_count = 1,
          scale = scale * 5,
          multiply_shift = scale,
          allow_forced_downscale = true,
          surface = "nauvis",
          usage = "enemy",
        }
      ),
    }
  }
end

function scp_682_water_reflection(scale)
  return
  {
    pictures =
    {
      filename = "__scps__/graphics/entity/682/682.png",
      priority = "extra-high",
      width = 15,
      height = 15,
      shift = util.by_pixel(0, 0),
      scale = 5 * scale,
      variation_count = 1,
    },
    rotate = false,
    orientation_to_variation = false
  }
end
