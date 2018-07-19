/// @description ?

if (target_room != noone)
{
	if (mouse_x > bbox_left && mouse_x < bbox_right && mouse_y > bbox_top && mouse_y < bbox_bottom)
	{
		if (mouse_check_button_pressed(mb_any))
		{
			room_goto(target_room);
		}
	}
}