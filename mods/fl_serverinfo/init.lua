lunohints = { }

lunohints.getFormspecIndex = function()
	local formspec = "size[3.0,3.25]"
	--.."bgcolor[#00880044;false]"
	formspec = formspec
		--.."background[0,0;3.0,2.75;forgottenlands.png]"
		.."image[0,0;3.6,0.5;forgottenlands.png]"
		.."button[0,0.75;3,0.5;btnHistory;Server Info]"
		.."button[0,1.50;3,0.5;btnRules;Rules | Regras]"
		.."button[0,2.25;3,0.5;btnHints;Dicas | Tips]"
		.."label[0,3.00;ESC for exit...]"
	return formspec
end

lunohints.getFormspecRules = function()
	local formspec = "size[10,7.5]"
	.."bgcolor[#00880044;false]"
	formspec = formspec
		.."textarea[0.5,0.5;9.5,7.5;txtRules;Rules | Regras;"
			..minetest.formspec_escape(
				"  EN:\n\n"
				.."   This server, being friendly, would like you not to talk nonsense in the chat. Don't grief the players' buildings, it can take a permanent ban.\n\n"
				.."   Please don't spam the chat. And don't ask for privs for the server admin or dev.\n\n"
				.."   Please, if you are going to report a bug or player doing improper things, only speak if it's true, we are here wanting to help you all.\n\n"
				.."   BR:\n\n"
				.."   Esse server, sendo amigável, gostaria que você não falasse besteiras no chat. Não grifar as construções dos players, isso pode levar a banimento permanente.\n\n"
				.."   Favor, não faça spam no chat. E não peça por privs para os o admin ou dev do servidor.\n\n"
				.."   Por favor, Se você está prestes a reportar um bug ou um player fazendo coisas indevidas, apenas fale se for verdade, estamos aqui querendo ajudar a todos.\n\n"
			)
		.."]"
		.."button[7.75,7.2;2,0.5;btnIndex;Voltar]"
	return formspec
end

lunohints.getFormspecHistory = function(playername)
	local formspec = "size[10,7.5]"
	--.."bgcolor[#00880044;false]"
	formspec = formspec
		.."textarea[0.5,0.5;9.5,7.5;txtHistory;Server Info;"
			..minetest.formspec_escape(""
				.."A world where you know you're going to find something out of the ordinary. "
				.."Here we have ruins, ships in some lakes, jars with items... We made this server, thinking about the quality of its gameplay and your happiness. "
				.."Own textures and mods? We have! Also, we customize the entire server to make your game even better. "
				.."Dev - Fallen_Angel | Admin - WilLiam12 "
				.."\n\n"
				.."Um mundo onde você sabe que vai encontrar algo fora do comum. "
				.."Aqui temos ruínas, navios em alguns lagos, potes com itens ... Fizemos este servidor pensando na qualidade de sua jogabilidade e na sua felicidade. "
				.."Texturas e mods próprios? Nós temos! Além disso, personalizamos todo o servidor para tornar o seu jogo ainda melhor. "
				.."É algo incrivel isso tudo!\n"
				.."\n"
				.."A partir de agora, é com você, "..playername.."..."
			)
		.."]"
		.."button[7.75,7.2;2,0.5;btnIndex;Voltar]"

	return formspec
end

lunohints.getFormspecHints = function()
	local formspec = "size[10,7.5]"
	--.."bgcolor[#00880044;false]"
	formspec = formspec
		.."textarea[0.5,0.5;9.5,7.5;txtHints;Tips;"
			..minetest.formspec_escape(
				"These tips will help you. \n\n"
				.."   #01 - do /mods to see server mods or look here https://github.com/WilLiam12-teddy/willicraft\n\n"
				.."   #02 - use /sethome inside your home for safety and then use /home and you're home\n\n "
				.."   #03 - always take food with you, hunger starts to appear with time\n\n"
                                .."   \n\n"
				.."   #01 - use /mods para ver os mods do servidor ou veja aqui https://github.com/WilLiam12-teddy/willicraft\n\n"
				.."   #02 - coloque /sethome no chat dentro de sua casa por segurança e depois coloque /home no chat para você voltar para casa\n\n"
				.."   #03 - sempre leve comida com você, fome começa a aparecer com o tempo.\n\n"
			)
		.."]"
		.."button[7.75,7.2;2,0.5;btnIndex;Voltar]"
	return formspec
end


minetest.register_on_player_receive_fields(function(player, formname, fields)
	if formname == "frmIndex" then -- This is your form name
		if fields.btnIndex~=nil then
			minetest.show_formspec(player:get_player_name(), "frmIndex", lunohints.getFormspecIndex())
		elseif fields.btnRules~=nil then
			minetest.show_formspec(player:get_player_name(), "frmIndex", lunohints.getFormspecRules())
		elseif fields.btnHistory~=nil then
			minetest.show_formspec(player:get_player_name(), "frmIndex", lunohints.getFormspecHistory(player:get_player_name()))
		elseif fields.btnHints~=nil then
			minetest.show_formspec(player:get_player_name(), "frmIndex", lunohints.getFormspecHints())
		end
	end
end)


minetest.register_chatcommand("welcome", {
	params = "",
	description = "Displays a formspec with server info.",
	privs = {},
	func = function(playername, param)
		minetest.show_formspec(playername, "frmIndex", lunohints.getFormspecIndex())
	end,
})

minetest.register_chatcommand("fl", {
	params = "",
	description = "Displays a formspec with server info",
	privs = {},
	func = function(playername, param)
		minetest.show_formspec(playername, "frmIndex", lunohints.getFormspecIndex())
	end,
})

minetest.register_on_joinplayer(function(player)
	local playername = player:get_player_name()
	minetest.show_formspec(playername, "frmIndex", lunohints.getFormspecIndex())
end)


