data:extend({
    {
        type = "technology",
        name = "renforced-walls",
        icon = "__base__/graphics/icons/wall.png",
        icon_size = 64,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "renforced-gate"
            },
            {
                type = "unlock-recipe",
                recipe = "renforced-wall"
            }
        },
        prerequisites = { "military-3", "gate" },
        unit = {
            count = 100,
            ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 },
                { "chemical-science-pack", 1 },
                { "military-science-pack", 1 }
            },
            time = 30
        }
    },
    {
        type = "technology",
        name = "ti-walls",
        icon = "__base__/graphics/icons/wall.png",
        icon_size = 64,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "ti-wall"
            },
        },
        prerequisites = { "military-2", "stone-wall" },
        unit = {
            count = 50,
            ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 },
            },
            time = 30
        }
    },
    {
        type = "technology",
        name = "good-fuel",
        icon = "__base__/graphics/icons/rocket-fuel.png",
        icon_size = 64,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "good-fuel"
            }
        },
        prerequisites = {"advanced-oil-processing"},
        unit = {
            count = 70,
            time = 30,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1}
            }
        }
    }
})
