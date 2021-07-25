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