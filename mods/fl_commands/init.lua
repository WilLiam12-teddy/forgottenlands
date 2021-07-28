minetest.register_chatcommand("afk", {
    description = "Tell everyone you are afk.",
	privs = {interact=true},
    func = function ( name, param )
        local player = minetest.get_player_by_name(name)
        minetest.chat_send_all(name.." is AFK! "..param)
        return true
    end,
})

minetest.register_chatcommand("whatisthis", {
	params = "",
	description = "Get itemstring of wielded item",
	func = function(player_name, param)
		local player = minetest.get_player_by_name(player_name)
		minetest.chat_send_player(player_name, player:get_wielded_item():to_string())
		return
	end
})

minetest.register_chatcommand("memory", {
    description = "Get server\"s Lua memory usage",
    privs = {server = true},
    func = function(name, param)
		minetest.chat_send_player(
            name,
            ("Lua is using %uMB"):format(collectgarbage("count") / 1024)
        )
    end
})

minetest.register_privilege("rollback_check", "Allows use of /rollback_check")

minetest.override_chatcommand("rollback_check", {
    privs = {rollback_check=true}
})

-- allow regular players access to limited rollback checking
minetest.register_chatcommand("grief_check", {
    description = "Check who last touched a node or a node near it",
    func = function(name)
        return minetest.registered_chatcommands["rollback_check"].func(
            name,
            "1 1209600 10"
        )
    end
})