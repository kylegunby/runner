/// @description Monitor current platform and spawn others

// Spawn ground platforms
if (current_platform.bbox_right < room_width + BLOCK_WIDTH)
{
	// Determine spawn x
	var _current_x	= current_platform.bbox_right;
	var _gap_size	= 0;
	var _height		= current_platform.height;
	
	if (chance(0.6))
	{
		// Determine height
		switch (current_platform.height)
		{
			case 1:
				_height = 2;
				break;
			case 2:
				_height = choose(1, 3);
				break;
			case 3:
				_height = choose(1, 2, 3);
				break;
			case 4:
				_height = choose(1, 2, 3, 5);
				break;
			case 5:
				_height = choose(1, 2, 3, 4, 6);
				break;
			case 6:
				_height = choose(1, 2, 3, 4, 5);
				break;
		}
	}
	
	_gap_size = BLOCK_WIDTH * irandom_range(min_gap, max_gap);
	
	current_platform = instance_create_layer(_current_x + _gap_size, room_height - (BLOCK_HEIGHT * _height), "Platforms", o_platform);
	with (current_platform)
	{
		sprite_index	= get_platform_sprite(global.grass_platforms);
		height			= _height;
	}
	
	/*
	if (chance(gap_chance))
	{
		// Get gap size
		_gap_size = BLOCK_WIDTH * irandom_range(min_gap, max_gap);
	}
	*/
}