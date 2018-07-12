/// @desc screen_shake(magnitude, frames)
/// @param magnitude strength of shake radius in pixels
/// @param frames sets the length of the shake

with (o_camera)
{
	if (argument0 > shake_remain)
	{
		shake_magnitude = argument0;
		shake_remain	= argument0;
		shake_length	= argument1;
	}
}
