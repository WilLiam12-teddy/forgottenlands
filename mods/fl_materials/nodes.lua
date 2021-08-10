

minetest.override_item("default:wood",{

    tiles = {{name = "wood_grid.png", align_style = "world", scale = 2}},
    iventory_image = '{inventorycube{wood_grid.png&[sheet:2x2:1,1{wood_grid.png&[sheet:2x2:1,1{wood_grid.png&[sheet:2x2:1,1',
})

minetest.override_item("default:aspen_wood",{

    tiles = {{name = "aspen_wood_grid.png", align_style = "world", scale = 2}},
    iventory_image = '{inventorycube{aspen_wood_grid.png&[sheet:2x2:1,1{aspen_wood_grid.png&[sheet:2x2:1,1{aspen_wood_grid.png&[sheet:2x2:1,1',
})

minetest.override_item("default:pine_wood",{

    tiles = {{name = "pine_wood_grid.png", align_style = "world", scale = 2}},
    iventory_image = '{inventorycube{pine_wood_grid.png&[sheet:2x2:1,1{pine_wood_grid.png&[sheet:2x2:1,1{pine_wood_grid.png&[sheet:2x2:1,1',
})

minetest.override_item("default:junglewood",{

    tiles = {{name = "jungle_wood_grid.png", align_style = "world", scale = 2}},
    iventory_image = '{inventorycube{jungle_wood_grid.png&[sheet:2x2:1,1{jungle_wood_grid.png&[sheet:2x2:1,1{jungle_wood_grid.png&[sheet:2x2:1,1',
})

minetest.override_item("default:acacia_wood",{

    tiles = {{name = "acacia_wood_grid.png", align_style = "world", scale = 2}},
    iventory_image = '{inventorycube{acacia_wood_grid.png&[sheet:2x2:1,1{acacia_wood_grid.png&[sheet:2x2:1,1{acacia_wood_grid.png&[sheet:2x2:1,1',
})

--- new nodes

minetest.register_node("fl_materials:stone_meteorite",{

    description = "meteorite ore",
    tiles = {"default_stone.png^meteorite.png"},
    groups = {cracky = 1},
    drop = "fl_materials:meteorite_fragment",
    sounds = default.node_sound_stone_defaults()

})

minetest.register_node("fl_materials:stone_fossil",{

    description = "Fossil ore",
    tiles = {"default_stone.png^fossil_ore.png"},
    groups = {cracky = 3, level = 1},
    drop = {max_itens = 2,
    items = {
            {rarity = 2, 
             items = {"fl_materials:fossil"}
            },
            {rarity = 1, 
            items = {"mobs_mc:bone"}
            }
          }
        },
    sounds = default.node_sound_stone_defaults()
})

minetest.register_node("fl_materials:copper_brute",{

    description = "copper brute block",
    tiles = {"copper_brute.png"},
    groups = {cracky = 1},
    sounds = default.node_sound_stone_defaults()

})

minetest.register_node("fl_materials:iron_brute",{

    description = "Iron brute block",
    tiles = {"iron_brute.png"},
    groups = {cracky = 1},
    sounds = default.node_sound_stone_defaults()
})

minetest.register_node("fl_materials:silver_brute",{

    description = "Silver brute block",
    tiles = {"silver_brute.png"},
    groups = {cracky = 1},
    sounds = default.node_sound_stone_defaults()
})

minetest.register_node("fl_materials:gold_brute",{

    description = "Gold brute block",
    tiles = {"gold_brute.png"},
    groups = {cracky = 1},
    sounds = default.node_sound_stone_defaults()
})

minetest.register_node("fl_materials:nostalgic_wood",{

    description = "Nostalgic wood",
    tiles = {"nostalgic_wood.png"},
    groups = {choppy = 1},
    sounds = default.node_sound_wood_defaults()
    })

--- brutes recipe

local recipes = {"default:copper_lump","default:iron_lump","default:gold_lump","moreores:silver_lump"}
local material = {"fl_materials:copper_brute","fl_materials:iron_brute","fl_materials:gold_brute","fl_materials:silver_brute"}
local ingots = {"default:copper_ingot","default:steel_ingot","default:gold_ingot","moreores:silver_ingot"}
local i = 1

for recipes, v in pairs(recipes) do 
    minetest.register_craft({
         type = "shapeless",
         output = material[i],
         recipe = {v,v,v,
                   v,v,v,
                   v,v,v}
    })
    minetest.register_craft({
        type = "cooking",
        output = ingots[i],
        recipe = material[i],
        cooktime = 20
    })
    i = i + 1
end

--- custom nodes recipes

local f = "fl_materials:fossil"
local w = "group:wood"

minetest.register_craft({
    output = "fl_materials:nostalgic_wood 8",
    recipe = {
        {w,w,w},
        {w,f,w},
        {w,w,w}
    }
})








