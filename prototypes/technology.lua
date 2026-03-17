local util = require("util")

local better_trains = {
    type = "technology",
    name = "better-trains",
    -- The icons array lets us layer and shift multiple images
    icons = {
        {
            icon = data.raw["item-with-entity-data"]["locomotive"].icon,
            icon_size = data.raw["item-with-entity-data"]["locomotive"].icon_size,
            icon_mipmaps = data.raw["item-with-entity-data"]["locomotive"].icon_mipmaps,
            tint = {r = 0, g = 0.2, b = 1, a = 0.8},
            scale = 1.5,
            shift = {-16, -16} -- Shifts the locomotive up and to the left
        },
        {
            icon = data.raw["item-with-entity-data"]["cargo-wagon"].icon,
            icon_size = data.raw["item-with-entity-data"]["cargo-wagon"].icon_size,
            icon_mipmaps = data.raw["item-with-entity-data"]["cargo-wagon"].icon_mipmaps,
            tint = {r = 0, g = 0.2, b = 1, a = 0.8},
            scale = 1.5,
            shift = {16, 16} -- Shifts the wagon down and to the right
        }
    },
    -- This tells the tech what it unlocks when research is complete
    effects = {
        {
            type = "unlock-recipe",
            recipe = "locomotive-mk2"
        },
        {
            type = "unlock-recipe",
            recipe = "cargo-wagon-mk2"
        }
    },
    prerequisites = {"railway", "chemical-science-pack", "production-science-pack", "utility-science-pack"},
    unit = {
        count = 3000,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
            {"utility-science-pack", 1}
        },
        time = 60
    }
}

data:extend({better_trains})