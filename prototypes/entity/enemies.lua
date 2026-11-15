require("__base__.prototypes.entity.enemy-constants")
require("prototypes.entity.682-animations")

local enemy_autoplace = require("__base__.prototypes.entity.enemy-autoplace-utils")
local sounds = require("__base__.prototypes.entity.sounds")
local hit_effects = require("__base__.prototypes.entity.hit-effects")

local spawn_range = 2.0
local spawn_precision = 1.0
local acid_cloud_range = spawn_range

local scp_ai_settings = function (size_in_group)
    return { destroy_when_commands_fail = true, size_in_group = size_in_group }
end

local scp_steering = function (a, b)
    return { move = { radius = a }, stay = { radius = b } }
end

local spawn_blocked_trigger = {
    {
        type = "direct",
        action_delivery = {
            type = "instant",
            target_effects = {
                type = "create-smoke",
                show_in_tooltip = true,
                entity_name = "acid-cloud",
                initial_height = 0
            }
        }
    }
}

local make_unit_melee_ammo_type = function (damage_value)
    return {
        target_type = "entity",
        action = {
            type = "direct",
            action_delivery = {
                type = "instant",
                target_effects = {
                    type = "damage",
                    damage = { amount = damage_value, type = "physical" }
                }
            }
        }
    }
end

data:extend({
    {
        type = "unit",
        name = "682",
        icon = "__scps__/graphics/icons/682.png",
        icon_size = 15,
        order = "b-e-a",
        flags = { "placeable-player", "placeable-enemy", "placeable-off-grid", "not-repairable", "breaths-air" },
        max_health = 1000,
        subgroup = "scp-enemies",
        resistances = {
            {
                type = "physical",
                decrease = 5,
                percent = 80
            },
            {
                type = "impact",
                decrease = 5,
                percent = 80
            },
            {
                type = "fire",
                decrease = 5,
                percent = 80
            },
            {
                type = "acid",
                decrease = 5,
                percent = 80
            },
            {
                type = "poison",
                decrease = 5,
                percent = 80
            },
            {
                type = "explosion",
                decrease = 5,
                percent = 80
            },
            {
                type = "laser",
                decrease = 5,
                percent = 80
            },
            {
                type = "electric",
                decrease = 5,
                percent = 80
            }
        },
        healing_per_tick = 0.5,
        collision_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
        selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
        damaged_trigger_effect = hit_effects.biter(),
        steering = scp_steering(1.5, 3),
        attack_parameters = {
            type = "projectile",
            range = 0.5,
            cooldown = 20,
            cooldown_deviation = 0.15,
            ammo_category = "melee",
            ammo_type = make_unit_melee_ammo_type(14),
            sound = sounds.biter_roars(0.35),
            animation = scp_682_attack_animation(2, { 0.6, 0.58, 0.51, 1 }, { 0.62, 0.55, 0.2, 0.7 }),
            range_mode = "bounding-box-to-bounding-box"
        },
        impact_category = "organic",
        vision_distance = 30,
        movement_speed = 1,
        distance_per_frame = 1,
        absorptions_to_join_attack = { pollution = 10 },
        distraction_cooldown = 100,
        min_pursue_time = 30 * 60,
        max_pursue_distance = 150,
        corpse = "behemoth-biter-corpse",
        run_animation = scp_682_run_animation(2, { 0.6, 0.58, 0.51, 1 }, { 0.62, 0.55, 0.2, 0.7 }),
        dying_explosion = "behemoth-biter-die",
        dying_sound = sounds.biter_dying(0.5),
        working_sound = sounds.biter_calls(0.4, 0.75),
        running_sound_animation_positions = { 2 },
        walking_sound = sounds.biter_walk(0, 0.3),
        ai_settings = scp_ai_settings(1),
        water_reflection = scp_682_water_reflection(2),
        loot = {
            {
                type = "item",
                name = "682-flesh",
                amount_min = 2,
                amount_max = 10,
                independent_probability = 1
            }
        },
        random_corpse_variation = true
    }
})
