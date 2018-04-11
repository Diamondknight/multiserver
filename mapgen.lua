----------------thanks to wuzzy for bedrock code (see credits in readme for link)-------------------


minetest.register_node("multiserver:bedrock", {
	description = ("Bedrock"),
	tiles = {"default_obsidian.png"},
	groups = {immortal=1, not_in_creative_inventory=1, },
	is_ground_content = false,
	on_blast = function() end,
	on_destruct = function () end,
	can_dig = function() return false end,
	diggable = false,
	drop = "",
})

if minetest.get_modpath("mesecons_mvps") ~= nil then
	mesecon.register_mvps_stopper("multiserver:bedrock")
end


-------------------------------------------SMP server---------------------------------------------------

minetest.register_ore({
		ore_type       = "scatter",
		ore            = "multiserver:bedrock",
		wherein        = "air",
		clust_scarcity = 1 * 1 * 1,
		clust_num_ores = 1,
		clust_size     = 1,
		y_max          = 1510,
		y_min          = 1500,
})

minetest.register_ore({
		ore_type       = "scatter",
		ore            = "multiserver:bedrock",
		wherein        = "air",
		clust_scarcity = 1 * 1 * 1,
		clust_num_ores = 1,
		clust_size     = 1,
		y_max          = -1500,
		y_min          = -1510,
})

minetest.register_ore({
		ore_type       = "scatter",
		ore            = "multiserver:bedrock",
		wherein        = "group:cracky",
		clust_scarcity = 1 * 1 * 1,
		clust_num_ores = 1,
		clust_size     = 1,
		y_max          = -1500,
		y_min          = -1510,
})

minetest.register_ore({
		ore_type       = "scatter",
		ore            = "multiserver:bedrock",
		wherein        = "group:crumbly",
		clust_scarcity = 1 * 1 * 1,
		clust_num_ores = 1,
		clust_size     = 1,
		y_max          = -1500,
		y_min          = -1510,
})

-------------------------------------------Roleplay Server---------------------------------------------------

minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:stone",
		wherein        = "air",
		clust_scarcity = 1 * 1 * 1,
		clust_num_ores = 1,
		clust_size     = 1,
		y_max          = 2990,
		y_min          = 1510,
})

minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:dirt",
		wherein        = "air",
		clust_scarcity = 1 * 1 * 1,
		clust_num_ores = 1,
		clust_size     = 1,
		y_max          = 2999,
		y_min          = 2990,
})

minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:dirt_with_grass",
		wherein        = "air",
		clust_scarcity = 1 * 1 * 1,
		clust_num_ores = 1,
		clust_size     = 1,
		y_max          = 3000,
		y_min          = 2999,
})

minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:dirt_with_dry_grass",
		wherein        = "default:dirt_with_grass",
		clust_scarcity = 30 * 30 * 30,
		clust_num_ores = 100,
		clust_size     = 100,
		y_max          = 3000,
		y_min          = 2999,
})

minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:dirt_with_snow",
		wherein        = "default:dirt_with_grass",
		clust_scarcity = 30 * 30 * 30,
		clust_num_ores = 100,
		clust_size     = 100,
		y_max          = 3000,
		y_min          = 2999,
})

minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:sand",
		wherein        = "group:crumbly",
		clust_scarcity = 50 * 50 * 50,
		clust_num_ores = 1,
		clust_size     = 1,
		y_max          = 2999,
		y_min          = 2990,
})

minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:silver_sand",
		wherein        = "group:crumbly",
		clust_scarcity = 50 * 50 * 50,
		clust_num_ores = 1,
		clust_size     = 1,
		y_max          = 2999,
		y_min          = 2990,
})

minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:desert_sand",
		wherein        = "group:crumbly",
		clust_scarcity = 50 * 50 * 50,
		clust_num_ores = 1,
		clust_size     = 1,
		y_max          = 2999,
		y_min          = 2990,
})
