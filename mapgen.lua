----------------thanks to wuzzy for bedrock code (see credits in readme for link)-------------------

-- Boilerplate to support localized strings if intllib mod is installed.
local S
if minetest.get_modpath("intllib") then
	S = intllib.Getter()
else
	S = function(s) return s end
end

local bedrock = {}

bedrock.layer = -1500 -- determined as appropriate by experiment
bedrock.node = {name = "multiserver:bedrock"}


minetest.register_on_generated(function(minp, maxp)
	if maxp.y >= bedrock.layer and minp.y <= bedrock.layer then
		local vm, emin, emax = minetest.get_mapgen_object("voxelmanip")
		local data = vm:get_data()
		local area = VoxelArea:new({MinEdge=emin, MaxEdge=emax})
		local c_bedrock = minetest.get_content_id("multiserver:bedrock")

		for x = minp.x, maxp.x do
			for z = minp.z, maxp.z do
				local p_pos = area:index(x, bedrock.layer, z)
				data[p_pos] = c_bedrock
			end
		end

		vm:set_data(data)
		vm:calc_lighting()
		vm:update_liquids()
		vm:write_to_map()
	end
end)

minetest.register_node("multiserver:bedrock", {
	description = S("Bedrock"),
	_doc_items_longdesc = S("Bedrock is a very hard block. It cannot be mined, altered, destroyed or moved by any means. It appears at the bottom of the world in a flat layer."),
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
	mesecon.register_mvps_stopper("bedrock2:bedrock")
end
