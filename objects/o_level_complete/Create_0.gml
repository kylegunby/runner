if (instance_exists(o_gui))
{
	with (o_gui) instance_deactivate_object(id);
}

alpha = 0;
interface_height	= display_get_gui_height();
interface_width		= display_get_gui_width();

button_width	= sprite_get_width(s_retry);
button_height	= sprite_get_height(s_retry);
button_y		= (interface_height - (interface_height / 3)) - 15;
retry_x			= ((interface_width / 4) / 2) + 100;
quit_x			= retry_x + button_width + 50;