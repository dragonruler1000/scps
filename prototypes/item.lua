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
    }
})