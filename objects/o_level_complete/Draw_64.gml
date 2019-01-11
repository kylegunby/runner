alpha += 1 / room_speed;
var _font				= f_gameover;

#region Draw background
draw_set_alpha(min(0.75, alpha));
draw_rectangle_color(0, 0, interface_width, interface_height, c_black, c_black, c_black, c_black, false);
draw_set_alpha(1);
#endregion

#region Draw Text
draw_set_text(c_white, _font, fa_center, fa_middle);
draw_text_color(interface_width * 0.5, interface_height * 0.5, "YOU DID IT!", c_white, c_white, c_white, c_white, 1);
default_font();
#endregion

#region Draw Retry button
draw_sprite(s_retry, 0, retry_x, button_y);
draw_sprite(s_quit, 0, quit_x, button_y);
#endregion

#region Draw Level Select Box
//draw_rectangle_color(quit_x1, button_y1, quit_x2, button_y2, c_red, c_red, c_red, c_red, false);
#endregion