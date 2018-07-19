if (instance_exists(o_gui))
{
	with (o_gui) instance_deactivate_object(id);
}

alpha = 0;
interface_height	= display_get_gui_height();
interface_width		= display_get_gui_width();

button_width	= ((interface_width - (interface_width / 4)) / 2) / 2;
button_height	= button_width / 2;
button_y1		= (interface_height - (interface_height / 3)) - 15;
button_y2		= button_y1 + button_height;

retry_x1		= ((interface_width / 4) / 2) + 100;
retry_x2		= retry_x1 + button_width + 10;

quit_x1			= retry_x2 + 50;
quit_x2			= quit_x1 + button_width;