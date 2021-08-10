
minetest.clear_craft({type = "cooking", recipe ="default:iron_lump"})
minetest.clear_craft({type = "cooking", recipe ="default:copper_lump"})
minetest.clear_craft({type = "cooking", recipe ="default:gold_lump"})
minetest.clear_craft({type = "cooking", recipe ="default:tin_lump"})
minetest.clear_craft({type = "cooking", recipe ="moreores:silver_lump"})
minetest.clear_craft({type = "cooking", recipe ="moreores:mithril_lump"})

local v = "fl_materials:meteorite_ingot"
local b = "mobs_mc:bone"
local i = "default:stick"

minetest.register_craft({

    type = "shapeless",
    output = "fl_materials:meteorite_ingot",
    recipe = {"default:gold_ingot","default:gold_ingot","default:gold_ingot","default:gold_ingot",
    "fl_materials:meteorite_fragment","fl_materials:meteorite_fragment","fl_materials:meteorite_fragment","fl_materials:meteorite_fragment"}
    })

minetest.register_craft({
    output = "fl_materials:meteorite_pick",
    recipe = {
              {v,v,v},
              {"",i,""},
              {"",i,""}
    }
})

minetest.register_craft({
    output = "fl_materials:bone_pick",
    recipe = {
              {b,b,b},
              {"",i,""},
              {"",i,""}
    }
})

minetest.register_craft({
    output = "fl_materials:meteorite_axe",
    recipe = {
              {v,v,""},
              {v,i,""},
              {"",i,""}
    }
})

minetest.register_craft({
    output = "fl_materials:bone_axe",
    recipe = {
              {b,b,""},
              {b,i,""},
              {"",i,""}
    }
})

minetest.register_craft({
    output = "fl_materials:meteorite_sword",
    recipe = {
              {"",v,""},
              {"",v,""},
              {"",i,""}
    }
})

minetest.register_craft({
    output = "fl_materials:bone_sword",
    recipe = {
              {"",b,""},
              {"",b,""},
              {"",i,""}
    }
})

minetest.register_craft({
    type = "cooking",
    output = "default:copper_ingot",
    recipe = "fl_materials:copper_dust",
    cooktime = 10
})

minetest.register_craft({
    type = "cooking",
    output = "default:steel_ingot",
    recipe = "fl_materials:iron_dust",
    cooktime = 10
})

minetest.register_craft({
    type = "cooking",
    output = "default:gold_ingot",
    recipe = "fl_materials:gold_dust",
    cooktime = 10
})

minetest.register_craft({
    type = "cooking",
    output = "default:tin_ingot",
    recipe = "fl_materials:tin_dust",
    cooktime = 10
})

minetest.register_craft({
    type = "cooking",
    output = "moreores:silver_ingot",
    recipe = "fl_materials:silver_dust",
    cooktime = 10
})

minetest.register_craft({
    type = "cooking",
    output = "moreores:mithril_ingot",
    recipe = "fl_materials:mithril_dust",
    cooktime = 10
})