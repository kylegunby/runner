/// @description Checks if mouse position is in bounds
/// @param mouse_x
/// @param mouse_y
/// @param min_x
/// @param max_x
/// @param min_y
/// @param max_y

var _xx = argument0;
var _yy = argument1;
var _min_x = argument2;
var _max_x = argument3;
var _min_y = argument4;
var _max_y = argument5;


if (_xx > _min_x && _xx < _max_x)
{
	if (_yy > _min_y && _yy < _max_y)
	{
		return true;
	}
}

return false;
