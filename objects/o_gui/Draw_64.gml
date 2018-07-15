/// @description Draw that gui, boi

var _gem_x		= 10;
var _gem_y		= 5;
var _gem_width	= sprite_get_width(s_ui_gem);

draw_sprite(s_ui_gem, 0, _gem_x, _gem_y);
draw_set_color(c_black);
draw_text(_gem_x + _gem_width, 10, ": " + string(global.gems));
draw_set_color(-1);