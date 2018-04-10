--node restriction code from Chimneyswift
--on_place = function(item, player, pt)
    --if pos.y > -200 then
        --minetest.item_place(item, player, pt)
    --end
--end,



minetest.register_node(":tnt:tnt", {
			description = "tnt",
			tiles = {"tnt_top.png", "tnt_bottom.png", "tnt_side"},
			is_ground_content = false,
			groups = {dig_immediate = 2, mesecon = 2, tnt = 1, flammable = 5},
			sounds = default.node_sound_wood_defaults(),
			after_place_node = function(pos, placer)
				if placer:is_player() then
					local meta = minetest.get_meta(pos)
					meta:set_string("owner", placer:get_player_name())
				end
			end,
         on_place = function(item, player, pt)
    if pos.y > -200 then
        minetest.item_place(item, player, pt)
    end
end,
			on_punch = function(pos, node, puncher)
				if puncher:get_wielded_item():get_name() == "default:torch" then
					minetest.swap_node(pos, {"tnt:tnt_burning"})
					minetest.registered_nodes["tnt:tnt_burning"].on_construct(pos)
					minetest.log("action", puncher:get_player_name() ..
						" ignites " .. node.name .. " at " ..
						minetest.pos_to_string(pos))
				end
			end,
			on_blast = function(pos, intensity)
				minetest.after(0.1, function()
					tnt.boom(pos, def)
				end)
			end,
			mesecons = {effector =
				{action_on =
					function(pos)
						tnt.boom(pos, def)
					end
				}
			},
			on_burn = function(pos)
				minetest.swap_node(pos, {"tnt:tnt_burning"})
				minetest.registered_nodes["tnt:tnt_burning"].on_construct(pos)
			end,
			on_ignite = function(pos, igniter)
				minetest.swap_node(pos, {"tnt:tnt_burning"})
				minetest.registered_nodes["tnt:tnt_burning"].on_construct(pos)
			end,
})



