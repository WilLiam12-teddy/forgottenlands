hometrophies = { 
	modname = minetest.get_current_modname(),
	modpath = minetest.get_modpath(minetest.get_current_modname()),
}

dofile(hometrophies.modpath.."/api.lua")

hometrophies.register_trophy("trofeugenerico", "Trofeu Generico", "default_gold_block.png", "",
	{
		{ "default:gold_ingot"		,""							,"default:gold_ingot" },
		{ "","default:gold_ingot"	,"" 														 },
		{ "default:gold_ingot"		,"default:gold_ingot"	,"default:gold_ingot" }
	}
)

hometrophies.register_trophy("trofeu1", "Trofeu - O Caçador 2020 - Quem matou mais de um determinado monstro!", "text_trophy_mat_dourado3.png", "text_trophy_simbol.png")
hometrophies.register_trophy("trofeu2", "Trofeu - O Guerreiro 2020 - Quem venceu num torneio de PVP!", "text_trophy_mat_florido.png", "text_trophy_simbol2.png")
hometrophies.register_trophy("trofeu3", "Trofeu - O Marajá 2020 - Quem tem mais dinheiro em um único bau!", "text_trophy_mat_dourado.png", "text_trophy_simbol3.png")
hometrophies.register_trophy("trofeu4", "Trofeu - A Beldade 2020 - A Garota mais amiga no minetest!", "text_trophy_mat_florido.png", "text_trophy_simbol4.png")

--[[
Ideias de trofeis de eventos:
 * O Caçador - Quem matou mais de um determinado monstro.
 * O Guerreiro - Quem venceu num torneio de PVP.
 * O Marajá - Quem tem mais dinheiro em um único bau.
 * A Beldade - A Garota mais amiga no minetest ('garotas' que entraram após o anuncio do premio não participam).
 * O Caixeiro - Quem tem mais lojas funcionais.
 * O Arquiteto - Construiu a casa mais bonita de todas.
 * O Colaborador - Quem mais ajudou ao servidor a fazer mods.
 * O Relator - Quem mais avisou sobre bugs (Pontuação diferencia por tipo de bugs).
 
OBS.: O ganhador (mais participantes) será publicado com screenshot no diáspora.
--]]

minetest.log('action','['..hometrophies.modname:upper()..'] Carregado!')
