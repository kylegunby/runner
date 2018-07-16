
draw_set_text(-1, menu_font, fa_right, fa_bottom);


for (var i = 0; i < menu_items; i++) {
	var offset = 2;
	var txt = menu[i];
	if (menu_cursor == i) {
		txt = string_insert("> ", txt, 0);
		var col = c_white;
	} else {
		var col = c_gray;	
	}
	var xx = menu_x;
	var yy = menu_y - (menu_item_height * (i * 1.5));
	draw_set_color(c_black);
	draw_text(xx - offset, yy, txt);
	draw_text(xx + offset, yy, txt);
	draw_text(xx, yy - offset, txt);
	draw_text(xx, yy + offset, txt);
	draw_set_color(col);
	draw_text(xx, yy, txt);
}

// Default values
draw_set_text(-1, -1, -1, -1);










