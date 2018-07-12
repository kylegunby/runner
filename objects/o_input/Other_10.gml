/// @description Get Input
right	= keyboard_check(vk_right);
left	= keyboard_check(vk_left);
up		= keyboard_check(vk_up);
down	= keyboard_check(vk_down);

right_pressed	= keyboard_check_pressed(vk_right);
left_pressed	= keyboard_check_pressed(vk_left);
up_pressed		= keyboard_check_pressed(vk_up);
down_pressed	= keyboard_check_pressed(vk_down);
confirm_pressed	= keyboard_check_pressed(vk_enter);
pause_pressed	= keyboard_check_pressed(vk_escape);

mouse_click		= mouse_check_button_pressed(mb_any);
space			= keyboard_check(vk_space);

