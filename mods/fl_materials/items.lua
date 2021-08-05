
local tool_stats = {maxlevel=2, uses=10, times={[1]=1.50, [2]=1.20, [3]=0.80}}

--- Itens

minetest.register_craftitem("fl_materials:copper_coin", {
    description = "Copper Coin",
    inventory_image = "copper_coin.png"
})

minetest.register_craftitem("fl_materials:silver_coin", {
    description = "Silver Coin",
    inventory_image = "silver_coin.png"
})

minetest.register_craftitem("fl_materials:gold_coin", {
    description = "Gold Coin",
    inventory_image = "gold_coin.png"
})

minetest.register_craftitem("fl_materials:meteorite_fragment",{

    description = "meteorite fragment",
    inventory_image = "meteorite_fragment.png"
})

minetest.register_craftitem("fl_materials:meteorite_ingot",{

    description = "meteorite ingot",
    inventory_image = "meteorite_ingot.png"
})

--- Tools

minetest.register_tool("fl_materials:meteorite_pick",{
    description = "Meteorite pickaxe",
    inventory_image = "tool_meteoritepick.png",
    range = 10,
    tool_capabilities = {
        full_punch_interval=1.5,
        max_drop_level=1,
        groupcaps={
            cracky = tool_stats
        },
        damage_groups = {fleshy=1}
    }
})

minetest.register_tool("fl_materials:meteorite_axe",{
    description = "Meteorite pickaxe",
    inventory_image = "tool_meteoriteaxe.png",
    range = 10,
    tool_capabilities = {
        full_punch_interval=1.5,
        max_drop_level=1,
        groupcaps={
            choppy = tool_stats
        },
        damage_groups = {fleshy=1}
    }
})

---Recipes

local v = "fl_materials:meteorite_ingot"
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
    output = "fl_materials:meteorite_axe",
    recipe = {
              {v,v,""},
              {v,i,""},
              {"",i,""}
    }
})