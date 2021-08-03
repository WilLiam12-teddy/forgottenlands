
minetest.register_node("fl_ruins:jar",{

    description = "treasure jar",
    drawtype = "mesh",
    mesh = "pote.obj",
    tiles = {"fl_jar.png"},
    groups = {oddly_breakable_by_hand = 2, cracky = 3, level =1},
    drop = {max_itens = 2,
           items = {
                   {rarity = 4, 
                    items = {"fl_materials:silver_coin"}
                   },
                   {rarity = 2, 
                   items = {"fl_materials:copper_coin"}
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

minetest.register_node("fl_ruins:jar2",{

    description = "blue treasure jar",
    drawtype = "mesh",
    mesh = "pote2.obj",
    tiles = {"fl_jar2.png"},
    groups = {oddly_breakable_by_hand = 2, cracky = 3, level =1},
    drop = {max_itens = 2,
           items = {
                   {rarity = 4, 
                    items = {"fl_materials:gold_coin"}
                   },
                   {rarity = 2, 
                   items = {"fl_materials:silver_coin"}
                   }
                 }
    },
    selection_box = {
        type = "fixed",
        fixed = {
            {-6/16, -0.5 , -6/16, 6/16, 8/16, 6/16},
        }
    },
    collision_box = {
        type = "fixed",
        fixed = {
            {-4/16, -0.5 , -4/16, 4/16, 6/16, 4/16},
        }
    },
    on_destruct = function(pos)
          local probabily = math.random(0,1)
              if probabily < 1 then
                 minetest.add_entity(pos, "mobs_mc:zombie",staticdata)
            end
     end,

    sounds = default.node_sound_glass_defaults()
})