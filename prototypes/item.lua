local util = require("util")

-- Cargo Wagon Mk2 Item
local cargo_wagon_mk2 = util.table.deepcopy(data.raw["item-with-entity-data"]["cargo-wagon"])
cargo_wagon_mk2.name = "cargo-wagon-mk2"
cargo_wagon_mk2.place_result = "cargo-wagon-mk2"

-- Clear the old icon properties to prevent conflicts
cargo_wagon_mk2.icon = nil
cargo_wagon_mk2.icon_size = nil
cargo_wagon_mk2.icon_mipmaps = nil

-- Apply the new tinted icons array
cargo_wagon_mk2.icons = {
    {
        icon = data.raw["item-with-entity-data"]["cargo-wagon"].icon,
        icon_size = data.raw["item-with-entity-data"]["cargo-wagon"].icon_size,
        icon_mipmaps = data.raw["item-with-entity-data"]["cargo-wagon"].icon_mipmaps,
        tint = {r = 0, g = 0.2, b = 1, a = 0.8}
    }
}

-- Locomotive Mk2 Item
local locomotive_mk2 = util.table.deepcopy(data.raw["item-with-entity-data"]["locomotive"])
locomotive_mk2.name = "locomotive-mk2"
locomotive_mk2.place_result = "locomotive-mk2"

-- Clear the old icon properties to prevent conflicts
locomotive_mk2.icon = nil
locomotive_mk2.icon_size = nil
locomotive_mk2.icon_mipmaps = nil

-- Apply the new tinted icons array
locomotive_mk2.icons = {
    {
        icon = data.raw["item-with-entity-data"]["locomotive"].icon,
        icon_size = data.raw["item-with-entity-data"]["locomotive"].icon_size,
        icon_mipmaps = data.raw["item-with-entity-data"]["locomotive"].icon_mipmaps,
        tint = {r = 0, g = 0.2, b = 1, a = 0.8}
    }
}

data:extend({cargo_wagon_mk2, locomotive_mk2})