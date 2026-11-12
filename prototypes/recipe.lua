data:extend
({
    {
        type = "recipe",
        name = "scp-022-j_plate",
        categories = {"smelting"},
        auto_recycle = false,
        energy_required = 3.2,
        ingredients = {{ type = "item", name = "titanium-ore", amount = 1}},
        results = {{type = "item", name = "titanium-plate", amount = 1}},
        allow_pollution = true
    },
    {
        type = "recipe",
        name = "renforced-wall",
        auto_recycle = false,
        energy_required = 4,
        ingredients = {{type = "item", name = "concrete", amount = 5}},
        results = {{type = "item", name = "renforced-wall", amount = 1}},
        allow_productivity = false
    }
}) 