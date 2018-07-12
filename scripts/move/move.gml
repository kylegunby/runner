/// @description  move(hspd, vspd)
/// @param x_input
/// @param y_input

var hspd = argument0; 
var vspd = argument1;

// Horizontal Collisions
if (place_meeting(x + hspd, y, o_solid))
{
    while (!place_meeting(x + sign(hspd), y, o_solid))
	{
        x += sign(hspd);
    }
	hspd = approach(x_input, 0, friction_);
    //hspd = 0;
}

// Move horizontally
x += hspd;

// Vertical Collisions
if (place_meeting(x, y + vspd, o_solid))
{
    while (!place_meeting(x, y + sign(vspd), o_solid))
	{
        y += sign(vspd);
    }
	vspd = approach(y_input, 0, friction_);
    //vspd = 0;
}

// Move vertically
y += vspd;




