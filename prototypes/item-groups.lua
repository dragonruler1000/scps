data:extend(
    {
        -- Adding a tab invintory to my mod so i can have all the added items togeather because i can
    {
        type = "item-group",
        name = "scp-items",
        order = "h",
        icon = "__scps__/graphics/icons/scp-022-j_ore.png",
        icon_size = 16
    },
    {
        type = "item-subgroup",
        name = "scp-resource",
        group = "scp-items",
        order = "a"
    },
    {
        type = "item-subgroup",
        name = "scp-buildings",
        group = "scp-items",
        order = "b"
    }
    }
)