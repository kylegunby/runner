/// @description Control menu

// Ease in menu
menu_x += (menu_x_target - menu_x) / menu_speed;

// Menu Controls
if (menu_control) {
	
	// Allow mouse input on menu
	var mouse_y_gui = device_mouse_y_to_gui(0);
	var mouse_x_gui = device_mouse_x_to_gui(0);
	if (mouse_x_gui > menu_start)
	{
		if (mouse_y_gui < menu_y && mouse_y_gui > menu_top)
		{
			menu_cursor = (menu_y - mouse_y_gui) div (menu_item_height * 1.5);
		
			if (o_input.mouse_click)
			{
				menu_x_target = gui_width + 200;
				menu_committed = menu_cursor;
				menu_control = false;
			}
		}
	}
}

if (menu_x > gui_width + 150) && (menu_committed != -1) {
	switch (menu_committed) {
		case 2:
			room_goto(r_level_1);
			break;
		case 1:
			/*
			if (!file_exists(SAVEFILE))
			{
				room_goto(r_level_1);
			}
			else
			{
				var file = file_text_open_read(SAVEFILE);
				var target = file_text_read_real(file);
				file_text_close(file);
				slide_transition(TRANS_MODE.GOTO, target);
			}
			*/
			room_goto(r_level_1);
			break;
		case 0:
			game_end();
			break;
	}
}

