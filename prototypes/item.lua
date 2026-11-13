local item_sounds = require("__base__.prototypes.item_sounds")
local sounds = require("__base__.prototypes.entity.sounds")
data:extend
({
    {
        type = "item",
        name = "titanium-ore",
        icon = "__scps__/graphics/icons/scp-022-j_ore.png",
        icon_size = 16,
        subgroup = "scp-resource",
        order = "a[titanium-ore]",
        inventory_move_sound = item_sounds.resource_inventory_move,
        pick_sound = item_sounds.resource_inventory_pickup,
        drop_sound = item_sounds.resource_inventory_move,
        stack_size = 50,
        weight = 1 * kg
    },
    {
        type = "item",
        name = "titanium-plate",
        icon = "__scps__/graphics/icons/scp-022-j_plate.png",
        subgroup = "scp-resource",
        order = "a[titanium-plate]",
        inventory_move_sound = item_sounds.resource_inventory_move,
        pick_sound = item_sounds.resource_inventory_pickup,
        drop_sound = item_sounds.resource_inventory_move,
        stack_size = 50,
        weight = 1 * kg
    },
    {
        type = "item",
        name = "renforced-wall",
        icon = "__base__/graphics/icons/wall.png",
        subgroup = "scp-buildings",
        order = "a[renforced-wall]",
        inventory_move_sound = item_sounds.concrete_inventory_move,
        pick_sound = item_sounds.concrete_inventory_pickup,
        drop_sound = item_sounds.concrete_inventory_move,
        place_result = "renforced-wall",
        stack_size = 100
    },
    {
        type = "item",
        name = "renforced-gate",
        icon = "__base__/graphics/icons/gate.png",
        subgroup = "scp-buildings",
        order = "a[renforced-gate]",
        inventory_move_sound = item_sounds.concrete_inventory_move,
        pick_sound = item_sounds.concrete_inventory_pickup,
        drop_sound = item_sounds.concrete_inventory_move,
        place_result = "renforced-gate",
        stack_size = 50
    }
})
