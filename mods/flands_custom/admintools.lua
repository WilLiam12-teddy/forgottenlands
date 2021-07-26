minetest.register_tool("flands_custom:adminsword", {
    description = "Admin Sword",
    inventory_image = "admin_sword.png",
    on_drop = function() end,
    
    tool_capabilities = {
        full_punch_interval = 0,
        max_drop_level = 3,
        groupcaps = {
            snappy = {times = {0.0, 0.0, 0.0}, uses = 0, maxlevel = 2},
        },
        damage_groups = {fleshy = 5000, burns = 5000},
    },
})

minetest.register_node("flands_custom:adminblock", {
    description = "Admin Block",
    tiles = {"admin_block.png"},
    is_ground_content = true,
    groups = {cracky=3, stone=1}
})