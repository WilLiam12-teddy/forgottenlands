

minetest.register_decoration({
      name = "fl_ruins:ruins",
      deco_type = "schematic",
      place_on = {"default:dirt_with_grass","default:dirt_with_snow","default:dirt_with_rainforest_litter","default:dirt_with_coniferous_litter"},
      place_offset_y = 0,
      sidelen = 16,
      fill_ratio = 0.0001,
      y_max = 50,
      y_min = 1.0,
      schematic = minetest.get_modpath("fl_ruins").."/schematics/ruins.mts",
      flags = "force_placement",
      rotation = "random",
      })

minetest.register_decoration({
        name = "fl_ruins:ruins2",
        deco_type = "schematic",
        place_on = {"default:dirt_with_grass","default:dirt_with_snow","default:dirt_with_rainforest_litter","default:dirt_with_coniferous_litter"},
        place_offset_y = 0,
        sidelen = 16,
        fill_ratio = 0.0001,
        y_max = 50,
        y_min = 1.0,
        schematic = minetest.get_modpath("fl_ruins").."/schematics/ruins2.mts",
        flags = "force_placement",
        rotation = "random",
        })

minetest.register_decoration({
          name = "fl_ruins:ship",
          deco_type = "schematic",
          place_on = "default:sand",
          place_offset_y = 10,
          sidelen = 16,
          fill_ratio = 0.0001,
          y_max = -10,
          y_min = -10,
          schematic = minetest.get_modpath("fl_ruins").."/schematics/ship.mts",
          flags = "force_placement",
          rotation = "random",
        })
    
