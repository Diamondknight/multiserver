local multiserver_path = minetest.get_modpath("multiserver")

--servers
dofile(multiserver_path.."/smp_server.lua")
dofile(multiserver_path.."/creative_server.lua")
dofile(multiserver_path.."/roleplay_server.lua")
dofile(multiserver_path.."/anarchy_server.lua")
dofile(multiserver_path.."/factions_server.lua")
dofile(multiserver_path.."/ctf_server.lua")
dofile(multiserver_path.."/skywars_server.lua")
dofile(multiserver_path.."/hunger_games_server.lua")
dofile(multiserver_path.."/bedwars_server.lua")

--functions
dofile(multiserver_path.."/node_restrictions.lua")
