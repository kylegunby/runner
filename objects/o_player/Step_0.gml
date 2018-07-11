#region Get player input
if (has_control)
{
	key_left	= o_input.left;
	key_right	= o_input.right;
	key_jump	= o_input.up;
	key_shoot	= o_input.mouse_click;
}
else
{
	key_left	= 0;
	key_right	= 0;
	key_jump	= 0;
	key_shoot	= 0;
}

#endregion

#region Calculate movement

var move	= key_right - key_left;
hsp			= move * walksp;

// Apply gravity
vsp += grv;

// Jumping
can_jump -= 1;
if (can_jump > 0 && key_jump) 
{
	vsp = -7;
	can_jump = 0;
}

#endregion

#region Collide and move

// Horizontal collision
if (place_meeting(x + hsp, y, o_wall)) 
{
	while(!place_meeting(x + sign(hsp), y, o_wall)) 
	{
		x += sign(hsp);
	}
	hsp = 0;
}

x += hsp;

// Vertical Collision
if (place_meeting(x, y + vsp, o_wall)) 
{
	while(!place_meeting(x, y + sign(vsp), o_wall)) 
	{
		y += sign(vsp);
	}
	vsp = 0;
}

y += vsp;

#endregion

#region Animation
if (!place_meeting(x, y + 1, o_wall)) 
{
	sprite_index	= s_player_jump;
	image_speed		= 0;
	
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
} 
else 
{
	can_jump = 10;
	image_speed = 1;
	if (hsp == 0) 
	{
		sprite_index = s_player;		
	} 
	else 
	{
		sprite_index = s_player_run;	
	}
	
}

// Dir facing
if (hsp != 0)
{
	image_xscale = sign(hsp);
}

#endregion