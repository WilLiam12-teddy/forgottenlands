hometrophies.trophy_node_box = {
	type = "fixed",
	fixed = {
		{-0.125, -0.5, -0.125, 0.1875, -0.4375, 0.1875}, -- NodeBox1
		{-0.0625, -0.4375, -0.0625, 0.125, -0.375, 0.125}, -- NodeBox2
		{-0.02, -0.375, -0.02, 0.0825, -0.1875, 0.0825}, -- NodeBox3
		{-0.0625, -0.1875, -0.0625, 0.125, -0.125, 0.125}, -- NodeBox4
		{-0.125, -0.1875, -0.0625, -0.0625, 0.125, 0.125}, -- NodeBox5
		{0.125, -0.1875, -0.0625, 0.1875, 0.125, 0.125}, -- NodeBox6
		{-0.125, -0.1875, 0.125, 0.1875, 0.125, 0.1875}, -- NodeBox7
		{-0.125, -0.1875, -0.125, 0.1875, 0.125, -0.0625}, -- NodeBox8
		{-0.0625, -0.25, -0.0625, 0.125, -0.1875, 0.125}, -- NodeBox9
		{0.1875, 0.05, 0, 0.23, 0.0925, 0.0625}, -- NodeBox10
		{0.1875, -0.15, 0, 0.23, -0.11, 0.0625}, -- NodeBox11
		{0.23, -0.15, 0, 0.2725, 0.0925, 0.0625}, -- NodeBox12
		{-0.1675, -0.15, 0, -0.125, -0.11, 0.0625}, -- NodeBox13
		{-0.1675, 0.05, 0, -0.125, 0.0925, 0.0625}, -- NodeBox14
		{-0.21, -0.15, 0, -0.1675, 0.0925, 0.0625}, -- NodeBox15
	}
}

hometrophies.trophy_node_selection = {
	type = "fixed",
	fixed = { -0.21, -0.5, -0.125, 0.2725, 0.125, 0.1875 }
}

hometrophies.register_trophy = function(id, desc, tm, ts, recipe)
	minetest.register_node("hometrophies:"..id, {
		description = desc,
		--inventory_image = "homedecor_trophy_inv.png",
		drawtype = "nodebox",
		paramtype = "light", --Nao sei pq, mas o blco nao aceita a luz se nao tiver esta propriedade
		paramtype2 = "facedir",
		node_box = hometrophies.trophy_node_box,
		selection_box = hometrophies.trophy_node_selection,
		--tiles = {"default_steel_block.png^text_shieldblock.png"},
		--tiles = {"text_trophy.png^text_trophy_simbol.png"},
		tiles = {
			tm, --cima
			tm, --baixo
			tm, --esquerda
			tm,  --direita
			tm, --traz
			tm.."^"..ts--.."^[transformfx" --frente
		},
		--is_ground_content = true,
		groups = {snappy=3,dig_immediate=3,attached_node=1},
		walkable = false,
		--sounds = default.node_sound_stone_defaults(),
		after_place_node = function(pos, placer, itemstack)
			local owner = placer:get_player_name()
			local meta = minetest.env:get_meta(pos)
			--meta:set_string("infotext", desc)
			--props = minetest.registered_items[item[1]]
			--props.description = item[2]
			meta:set_string("infotext", desc.." ("..owner..")")
		end,
	})
	
	if recipe~=nil then
		minetest.register_craft({
			output = "hometrophies:"..id,
			recipe = recipe,
		})
	end
	
	minetest.register_alias(id		,"hometrophies:"..id)
end

--[[
minetest.register_node("hometrophies:trofeu1", {
	description = "Trofeu 1",
	--inventory_image = "homedecor_trophy_inv.png",
	drawtype = "nodebox",
	paramtype = "light", --Nao sei pq, mas o blco nao aceita a luz se nao tiver esta propriedade
	paramtype2 = "facedir",
	node_box = trophy_node_box,
	selection_box = trophy_node_selection,
	--tiles = {"default_steel_block.png^text_shieldblock.png"},
	--tiles = {"text_trophy.png^text_trophy_simbol.png"},
	tiles = {
		"text_trophy.png", --cima
		"text_trophy.png", --baixo
		"text_trophy.png", --esquerda
		"text_trophy.png",  --direita
		"text_trophy.png", --traz
		"text_trophy.png^text_trophy_simbol2.png"--.."^[transformfx" --frente
	},
	--is_ground_content = true,
	groups = {snappy=3},
	--sounds = default.node_sound_stone_defaults(),
	after_place_node = function(pos, placer, itemstack)
		local meta = minetest.env:get_meta(pos)
		meta:set_string("infotext", "Trofeu 1")
	end,
})
]]--

--[[
minetest.register_craft({
	output = "hometrophies:trofeu1",
	recipe = {
		{ "default:gold_ingot","","default:gold_ingot" },
		{ "","default:gold_ingot","" },
		{ "default:gold_ingot","default:gold_ingot","default:gold_ingot" }
	},
})
]]--
