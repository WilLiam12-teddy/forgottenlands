local modpath = minetest.get_modpath("custom_materials")

custom_materials = {}

dofile(modpath.."/nodes.lua")
dofile(modpath.."/ores.lua")

minetest.register_decoration({
    name = "custom_materials:ruins",
    deco_type = "schematic",
    place_on = {"default:dirt_with_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.00001,
    y_max = 20,
    y_min = 1.0,
    schematic = minetest.get_modpath("custom_materials").."/schematics/ruins.mts",
    flags = "force_placement",
    rotation = "random",
    })




