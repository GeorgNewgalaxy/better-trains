local util = require("util")

local cargo_wagon_mk2 = util.table.deepcopy(data.raw["recipe"]["cargo-wagon"])
cargo_wagon_mk2.name = "cargo-wagon-mk2"
cargo_wagon_mk2.result = nil
cargo_wagon_mk2.results = {{type = "item", name = "cargo-wagon-mk2", amount = 1}}

local locomotive_mk2 = util.table.deepcopy(data.raw["recipe"]["locomotive"])
locomotive_mk2.name = "locomotive-mk2"
locomotive_mk2.result = nil
locomotive_mk2.results = {{type = "item", name = "locomotive-mk2", amount = 1}}

cargo_wagon_mk2.ingredients = {
    {type = "item", name = "cargo-wagon", amount = 1},
    {type = "item", name = "low-density-structure", amount = 50},
    {type = "item", name = "iron-gear-wheel", amount = 100},
    {type = "item", name = "plastic-bar", amount = 50},
    {type = "item", name = "steel", amount = 100},
    {type = "item", name = "processing-unit", amount = 20},
    {type = "fluid", name = "lubricant", amount = 100}
}
cargo_wagon_mk2.category = "crafting-with-fluid"

locomotive_mk2.ingredients = {
    {type = "item", name = "locomotive", amount = 1},
    {type = "item", name = "low-density-structure", amount = 75},
    {type = "item", name = "iron-gear-wheel", amount = 150},
    {type = "item", name = "plastic-bar", amount = 50},
    {type = "item", name = "steel", amount = 100},
    {type = "item", name = "processing-unit", amount = 30},
    {type = "fluid", name = "lubricant", amount = 100}
}
locomotive_mk2.category = "crafting-with-fluid"

data:extend({cargo_wagon_mk2, locomotive_mk2})
