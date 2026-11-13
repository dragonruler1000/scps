data:extend
({
    {
        type = "recipe",
        name = "scp-022-j_plate",
        categories = { "smelting" },
        auto_recycle = false,
        energy_required = 3.2,
        ingredients = { { type = "item", name = "titanium-ore", amount = 1 } },
        results = { { type = "item", name = "titanium-plate", amount = 1 } },
        allow_pollution = true
    },
    {
        type = "recipe",
        name = "renforced-wall",
        auto_recycle = false,
        enabled = false,
        energy_required = 4,
        ingredients = { { type = "item", name = "concrete", amount = 5 } },
        results = { { type = "item", name = "renforced-wall", amount = 1 } },
        allow_productivity = false
    },
    {
        type = "recipe",
        name = "ti-wall",
        auto_recycle = false,
        enabled = false,
        energy_required = 6,
        ingredients = { { type = "item", name = "titanium-plate", amount = 4 } },
        results = { { type = "item", name = "ti-wall", amount = 1 } },
        allow_productivity = false
    },
    {
        type = "recipe",
        name = "renforced-gate",
        auto_recycle = false,
        enabled = false,
        energy_required = 4,
        ingredients = {
            { type = "item", name = "renforced-wall", amount = 1 },
            {
                type = "item",
                name = "steel-plate",
                amount = 2
            },
            {
                type = "item",
                name = "electronic-circuit",
                amount = 2
            }
        },
        results = { { type = "item", name = "renforced-gate", amount = 1 } }
    },
    {
        type = "recipe",
        name = "good-fuel",
        auto_recycle = false,
        enabled = false,
        energy_required = 2,
        categories = { "chemistry" },
        ingredients = {
            { type = "fluid", name = "water", amount = 20 },
            {
                type = "item",
                name = "titanium-plate",
                amount = 3
            },
            {
                type = "fluid",
                name = "heavy-oil",
                amount = 6
            }
        },
        results = {{type = "item", name = "goodfuel", amount = 1}}
    }
})
