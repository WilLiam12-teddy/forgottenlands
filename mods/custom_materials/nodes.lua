minetest.register_node("custom_materials:stone_emerald",{

    description = "emerald ore",
    tiles = {"default_stone.png^emerald.png"},
    groups = {cracky = 1},

})

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



