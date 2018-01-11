-- dofile(minetest.get_modpath('ninja')..'/smoke.lua')


-- minetest.register_node("ninja:nightingale_floor", {
-- description = "Nightingale Floor",
-- 	drawtype = "allfaces_optional",
-- 	tiles = {"ninja_n_wood.png"},
-- 	paramtype = "light",
-- 	is_ground_content = false,
-- 	groups = {snappy = 3, flammable = 2},
--     sounds = default.node_sound_glass_defaults(),
-- })


if minetest.get_modpath("3d_armor") then
dofile(minetest.get_modpath("ninja").."/armor_ninja.lua")
end


minetest.register_tool("ninja:death", {
	description = "Death Touch",
	inventory_image = "ninja_hand.png",
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.90, [2]=0.90, [3]=0.30}, uses=4000000, maxlevel=3},
		},
		damage_groups = {fleshy=9999},
	},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_tool("ninja:ninjato", {
	description = "Ninjato",
	inventory_image = "ninja_ninjato.png",
	wield_scale = {x=1.5, y=2, z=1},
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.90, [2]=0.90, [3]=0.30}, uses=40, maxlevel=3},
		},
		damage_groups = {fleshy=99},
	},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_tool("ninja:nun", {
	description = "Nunchuks",
	inventory_image = "ninja_nun.png",
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.90, [2]=0.90, [3]=0.30}, uses=40, maxlevel=3},
		},
		damage_groups = {fleshy=99},
	},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_craft({
        output = 'ninja:ningreen',
        recipe = {
            {'', '', ''},
		    {'ninja:ningi', 'group:leaves', ''},
		    {'', '', ''},
                
        }
})

minetest.register_node("ninja:bamboo_block", {
	description = "Bamboo Block",
	tile_images = { "ninja_bamboo_block.png" },
	groups = {cracky=3},
})

minetest.register_tool("ninja:kunai", {
	description = "Kunai",
	inventory_image = "ninja_kunai.png",
	wield_scale = {x=1.5, y=2, z=1},
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.90, [2]=0.90, [3]=0.30}, uses=40, maxlevel=3},
		},
		damage_groups = {fleshy=99},
	},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_craft({
        output = 'ninja:ningi',
        recipe = {
            {'group:wool', '', 'group:wool'},
		    {'group:wool', 'group:wool', 'group:wool'},
		    {'group:wool', 'group:wool', 'group:wool'},
                
        }
})

minetest.register_craft({
        output = 'ninja:ninred',
        recipe = {
            {'', '', ''},
		    {'ninja:ningi', 'default:apple', ''},
		    {'', '', ''},
                
        }
})

minetest.register_craft({
        output = 'ninja:ninblack',
        recipe = {
            {'', '', ''},
		    {'ninja:ningi', 'default:cobble', ''},
		    {'', '', ''},
                
        }
})

minetest.register_craft({
        output = 'ninja:ninblue',
        recipe = {
            {'', '', ''},
		    {'ninja:ningi', 'bucket:bucket_water', ''},
		    {'', '', ''},
                
        }
})

minetest.register_craft({
        output = 'ninja:ninwhite',
        recipe = {
            {'', '', ''},
		    {'ninja:ningi', 'default:snow', ''},
		    {'', '', ''},
                
        }
})

minetest.register_craft({
        output = 'ninja:cloak_brown',
        recipe = {
            {'', '', ''},
		    {'ninja:ningi', 'group:wool', ''},
		    {'', '', ''},
                
        }
})

minetest.register_craft({
        output = 'ninja:nun',
        recipe = {
            {'', '', ''},
		    {'', 'default:stick', ''},
		    {'default:steel_ingot', '', 'default:steel_ingot'},
                
        }
})

minetest.register_craft({
        output = 'ninja:ninjato',
        recipe = {
            {'', '', 'default:steel_ingot'},
		    {'', 'default:steel_ingot', ''},
		    {'default:stick', '', ''},
                
        }
})

minetest.register_craft({
        output = 'ninja:kunai',
        recipe = {
            {'', '', ''},
		    {'default:steel_ingot', '', ''},
		    {'group:wool', '', ''},
                
        }
})