/// @description Set vars

// Create object pool
//global.platform_pool = ds_list_create();

move_speed = 8;

// Create first platforms
with (instance_create_layer(0, room_height - 64, "Platforms", o_platform))
{
	sprite_index = s_grass7x1;	
}

current_platform = instance_create_layer(sprite_get_width(s_grass7x1), room_height - 64, "Platforms", o_platform);
with (current_platform)
{
	sprite_index = s_grass7x1;	
}

