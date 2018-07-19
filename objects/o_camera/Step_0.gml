/// @description Update camera

if (instance_exists(follow))
{
	x = lerp(x, follow.x, 0.3);	
	y = lerp(x, follow.y, 0.3);
}

// Keep camera in room
x = clamp(x, view_w_half, room_width - view_w_half);
y = clamp(y, view_h_half, room_height - view_h_half);

// Cam shake
x += random_range(-shake_remain, shake_remain);
y += random_range(-shake_remain, shake_remain);
shake_remain = max(0, shake_remain - ((1 / shake_length) * shake_magnitude));


// Update camera view
camera_set_view_pos(cam, x - view_w_half, y - view_h_half);

if (keyboard_check_pressed(ord("Q"))) {
	instance_deactivate_object(o_player);
	instance_create_layer(0, 0, "Instances", o_level_complete);
}