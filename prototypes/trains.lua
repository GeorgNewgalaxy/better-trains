local util = require("util")

local function recursive_tint(tbl, custom_tint)
    if type(tbl) ~= "table" then return end
    
    -- If it's a visual sprite and NOT a shadow
    if (tbl.filename or tbl.filenames) and not tbl.draw_as_shadow then
        tbl.tint = custom_tint
    end
    
    -- Keep digging through nested tables
    for key, value in pairs(tbl) do
        -- Skip the default "color" mask property so it doesn't conflict
        if type(value) == "table" and key ~= "color" then
            recursive_tint(value, custom_tint)
        end
    end
end

local metallic_blue_tint = {r = 0.4, g = 0.5, b = 1.0, a = 1.0}

local cargo_wagon_mk2 = util.table.deepcopy(data.raw["cargo-wagon"]["cargo-wagon"])

cargo_wagon_mk2.name = "cargo-wagon-mk2"
cargo_wagon_mk2.color = {r = 0, g = 0.2, b = 1, a = 1.0} 
cargo_wagon_mk2.allow_custom_color = false
cargo_wagon_mk2.inventory_size = 512
cargo_wagon_mk2.weight = 4000

cargo_wagon_mk2.minable = {
    mining_time = 0.5, 
    results = {{type = "item", name = "cargo-wagon-mk2", amount = 1}}
}

recursive_tint(cargo_wagon_mk2.pictures, metallic_blue_tint)
recursive_tint(cargo_wagon_mk2.horizontal_doors, metallic_blue_tint)
recursive_tint(cargo_wagon_mk2.vertical_doors, metallic_blue_tint)
recursive_tint(cargo_wagon_mk2.wheels, metallic_blue_tint)

local locomotive_mk2 = util.table.deepcopy(data.raw["locomotive"]["locomotive"])

locomotive_mk2.name = "locomotive-mk2"
locomotive_mk2.color = {r = 0, g = 0.2, b = 1, a = 1.0}
locomotive_mk2.allow_custom_color = false
locomotive_mk2.max_speed = 2.0 
locomotive_mk2.max_power = "6000kW"
locomotive_mk2.weight = 3000
locomotive_mk2.breaking_force = 40

locomotive_mk2.minable = {
    mining_time = 0.5, 
    results = {{type = "item", name = "locomotive-mk2", amount = 1}}
}

recursive_tint(locomotive_mk2.pictures, metallic_blue_tint)
recursive_tint(locomotive_mk2.wheels, metallic_blue_tint)

data:extend{cargo_wagon_mk2, locomotive_mk2}
