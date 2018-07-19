
if (target_room != noone)
{
	draw_self();
	draw_set_text(c_white, f_level_button, fa_center, fa_middle);
	var _text_x = bbox_left + (sprite_width / 2);
	var _text_y = bbox_top + (sprite_height / 2);

	draw_text(_text_x, _text_y, "LEVEL\n" + string(text));

	default_font();
}