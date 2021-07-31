
minetest.register_node("fl_ruins:jar",{

    description = "treasure jar",
    drawtype = "mesh",
    mesh = "pote.obj",
    tiles = {"fl_jar.png"},
    groups = {oddly_breakable_by_hand = 2, cracky = 3, level =1},
    drop = {max_itens = 2,
           items = {
                   {rarity = 4, 
                    items = {"default:gold_ingot"}
                   },
                   {rarity = 2, 
                   items = {"default:steel_ingot"}
                   }
                 }
    },
    selection_box = {
        type = "fixed",
        fixed = {
            {-4/16, -0.5 , -4/16, 4/16, 6/16, 4/16},
        }
    },
    collision_box = {
        type = "fixed",
        fixed = {
            {-4/16, -0.5 , -4/16, 4/16, 6/16, 4/16},
        }
    },
    sounds = default.node_sound_glass_defaults()
})