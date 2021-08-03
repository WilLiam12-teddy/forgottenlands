
local tool_stats = {maxlevel=2, uses=10, times={[1]=1.50, [2]=1.20, [3]=0.80}}

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

minetest.register_tool("fl_materials:meteorite_pick",{
    description = "Meteorite Pickaxe",
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
    description = "Meteorite Axe",
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