/// @description Setup camera

cam				= view_camera[0];
follow			= o_player;
view_w_half		= camera_get_view_width(cam) * 0.5;
view_h_half		= camera_get_view_height(cam) * 0.5;
x_to			= xstart;
y_to			= ystart;
shake_length	= 0;
shake_magnitude = 0;
shake_remain	= 0;
buff			= 32;

// Background layers
mountains	= noone;
trees		= noone;

if (layer_exists("Mountains"))
{
	mountains = layer_get_id("Mountains");
}

if (layer_exists("Trees"))
{
	trees = layer_get_id("Trees");
}

