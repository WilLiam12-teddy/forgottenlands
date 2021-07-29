

minetest.register_decoration({
    name = "fl_ruins:ruins",
    deco_type = "schematic",
    place_on = {"default:dirt_with_grass","default:dirt_with_snow","default:dirt_with_rainforest_litter","default:dirt_with_coniferous_litter"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.00001,
    y_max = 50,
    y_min = 1.0,
    schematic = minetest.get_modpath("fl_ruins").."/schematics/ruins.mts",
    flags = "force_placement",
    rotation = "random",
    })
    
