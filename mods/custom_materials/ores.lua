minetest.register_ore({

    ore_type = "blob",
    ore = "custom_materials:stone_meteorite",
    wherein = "default:stone",
    clust_scarcity = 3000,
    clust_size = 5,
    height_min = -50,
    height_max = 500,
    noise_params = {offset = 0, scale = 1, spread = {x=100,y=100,z=100}, seed = 23, octaves = 3, persist = 0.70}


})

minetest.register_craftitem("custom_materials:meteorite_fragment",{

    description = "meteorite fragment",
    inventory_image = "meteorite_fragment.png"
})

minetest.register_craftitem("custom_materials:meteorite_ingot",{

    description = "meteorite ingot",
    inventory_image = "meteorite_ingot.png"
})
minetest.register_craft({

    type = "shapeless",
    output = "custom_materials:meteorite_ingot",
    recipe = {"default:gold_ingot","default:gold_ingot","default:gold_ingot","default:gold_ingot",
    "custom_materials:meteorite_fragment","custom_materials:meteorite_fragment","custom_materials:meteorite_fragment","custom_materials:meteorite_fragment"}
    })