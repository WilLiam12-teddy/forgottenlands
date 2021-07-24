minetest.register_ore({

    ore_type = "blob",
    ore = "custom_materials:stone_emerald",
    wherein = "default:stone",
    clust_scarcity = 3000,
    clust_size = 4,
    height_min = -3100,
    height_max = 200,
    noise_params = {offset = 0, scale = 1, spread = {x=100,y=100,z=100}, seed = 23, octaves = 3, persist = 0.70}


})