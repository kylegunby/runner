/// @description Set vars

// Create object pool
//global.platform_pool = ds_list_create();

move_speed			= 8;
min_gap				= 2;
max_gap				= 3;
ground_height		= 1;
min_height			= room_height - BLOCK_HEIGHT;
max_height			= 3;
gap_chance			= 0.6;
current_platform	= noone;


// Create first platforms
with (instance_create_layer(0, min_height, "Platforms", o_platform))
{
	sprite_index = s_grass14x1;	
}

current_platform = instance_create_layer(sprite_get_width(s_grass14x1) + (BLOCK_WIDTH * 2), min_height, "Platforms", o_platform);
with (current_platform)
{
	sprite_index = s_grass7x1;
}