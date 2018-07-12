/// @description Update camera

if (instance_exists(follow))
{
	/*
	x = lerp(x, follow.x, 0.1);	
	y = lerp(x, follow.y, 0.1);
	*/
	x_to = follow.x;
	y_to = follow.y;
	
	if (follow.object_index == o_dead_player)
	{
		x = x_to;
		y = y_to;
	}
}

// Update object position
x += (x_to - x) / 25;
y += (y_to - y) / 25;

// Keep camera in room
x = clamp(x, view_w_half + buff, room_width - view_w_half - buff);
y = clamp(y, view_h_half + buff, room_height - view_h_half - buff);

// Cam shake
x += random_range(-shake_remain, shake_remain);
y += random_range(-shake_remain, shake_remain);
shake_remain = max(0, shake_remain - ((1 / shake_length) * shake_magnitude));


// Update camera view
camera_set_view_pos(cam, x - view_w_half, y - view_h_half);

// Parallax background
if (layer_exists(mountains))
{
	layer_x(mountains, x / 2);
}

if (layer_exists(trees))
{
	layer_x(trees, x / 4);
}
