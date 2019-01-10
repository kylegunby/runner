//if (keyboard_check_pressed(vk_anykey) || mouse_check_button_pressed(mb_any)) room_restart();

var _xx = device_mouse_x_to_gui(0);
var _yy = device_mouse_y_to_gui(0);

// Retry button
if (mouse_check_button_pressed(mb_left))
{
	// Retry
	if mouse_is_in_bounds(_xx, _yy, retry_x, retry_x + button_width, button_y, button_y + button_height)
	{
		room_restart();
	}
	
	// Quit
	if mouse_is_in_bounds(_xx, _yy, quit_x, quit_x + button_width, button_y, button_y + button_height)
	{
		game_end();
	}
}