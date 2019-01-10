alpha += 1 / room_speed;

var _interface_height	= display_get_gui_height();
var _interface_width	= display_get_gui_width();
var _font				= f_gameover;
var _sub_font			= f_gameover_sub;
var _gameover_text		= "DEAD!";
// Draw a rectangle over the screen to fade
draw_set_alpha(min(0.85, alpha));
draw_rectangle_color(0, 0, _interface_width, _interface_height, c_black, c_black, c_black, c_black, false);
draw_set_alpha(1);

// Draw Game Over Text
draw_set_text(c_white, _font, fa_center, fa_middle);
draw_text_color(_interface_width * 0.5, _interface_height * 0.33, _gameover_text, c_white, c_white, c_white, c_white, 1);
default_font();

draw_sprite(s_retry, 0, retry_x, button_y);
draw_sprite(s_quit, 0, quit_x, button_y);