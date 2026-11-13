local resource_autoplace = require("resource-autoplace")

resource_autoplace.initialize_patch_set("titanium-ore")

local function resource(resource_parameters, autoplace_parameters)
    return {
        type = "resource",
        name = resource_parameters.name,
        icon = "__scps__/graphics/icons/" .. resource_parameters.name .. ".png",
        icon_size = 16,
        flags = { "placeable-neutral" },
        order = "a-b-" .. resource_parameters.order,
        tree_removal_probability = 0.8,
        tree_removal_max_distance = 32 * 32,
        minable = resource_parameters.minable
            or {
                mining_particle = resource_parameters.name .. "-particle",
                mining_time = resource_parameters.mining_time,
                result = resource_parameters.name
            },
        category = resource_parameters.category,
        subgroup = resource_parameters.subgroup,
        walking_sound = resource_parameters.walking_sound,
        driving_sound = resource_parameters.driving_sound,
        mining_sound = resource_parameters.mining_sound,
        collision_mask = resource_parameters.collision_mask,
        collision_box = { { -0.1, -0.1 }, { 0.1, 0.1 } },
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        autoplace = resource_autoplace.resource_autoplace_settings {
            name = resource_parameters.name,
            order = resource_parameters.order,
            base_density = autoplace_parameters.base_density,
            base_spots_per_km2 = autoplace_parameters.base_spots_per_km2,
            has_starting_area_placement = false,
            regular_rq_factor_multiplier = autoplace_parameters.regular_rq_factor_multiplier,
            starting_rq_factor_multiplier = autoplace_parameters.starting_rq_factor_multiplier,
            candidate_spot_count = autoplace_parameters.candidate_spot_count,
            tile_restriction = autoplace_parameters.tile_restriction
        },
        stage_counts = { 15000, 5500, 1300, 400, 80 },
        stages = {
            sheet = {
                filename = "__scps__/graphics/entity/" .. resource_parameters.name
                    .. "/" .. resource_parameters.name
                    .. ".png",
                priority = "extra-high",
                height = 5,
                width = 9,
                spacing = 1,
                frame_count = 1,
                variation_count = 5,
                scale = 0.5
            }
        },
        map_color = resource_parameters.map_color,
        mining_visualisation_tint = resource_parameters.mining_visualisation_tint,
        factoriopedia_simulation = resource_parameters.factoriopedia_simulation
    }
end

data:extend({
    resource({
        name = "titanium-ore",
        order = "b",
        map_color = { r = 1, g = 1, b = 1, a = 1 },
        mining_time = 2
    },
        {
            base_density = 30,
            regular_rq_factor_multiplier = 1.10,
            starting_rq_factor_multiplier = 1.5,
            candidate_spot_count = 22
        })
})

data.raw.planet.nauvis.map_gen_settings.autoplace_controls["titanium-ore"] = {}
data.raw.planet.nauvis.map_gen_settings.autoplace_settings.entity.settings["titanium-ore"] = {}
