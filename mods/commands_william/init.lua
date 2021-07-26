-- minetest.register_chatcommand("priv0", {
--     description = "Clear privs, ADD shout.",
--     privs = {server = true},
--     func = function( name, param)
--         if param==""  or name=="" then
--             minetest.chat_send_player(name, "I need a name...")
--             return false
--         end
--         extras.setprivs_jailed( param)
--     end,
--     })
--
-- minetest.register_chatcommand("priv1", {
--     description = "Clear privs, ADD default_privs",
--     privs = {server = true},
--     func = function( name, param)
--         if param==""  or name=="" then
--             minetest.chat_send_player(name, "I need a name...")
--             return false
--         end
--         extras.setprivs_released( param)
--     end,
--     })

minetest.register_chatcommand("afk", {
    description = "Tell everyone you are afk.",
	privs = {interact=true},
    func = function ( name, param )
        local player = minetest.get_player_by_name(name)
        minetest.chat_send_all(name.." is AFK! "..param)
        return true
    end,
})