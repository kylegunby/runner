#region Get player input

jump_pressed = mouse_check_button_pressed(mb_any);

#endregion

#region Calculate movement
// Make sure we are running
hsp = run_speed;

// Apply gravity
vsp += grv;

// Jumping
can_jump -= 1;
if (can_jump > 0 && jump_pressed) 
{
	vsp			= jump_velocity;
	can_jump	= 0;
}

#endregion

#region Collide and move

// Vertical collision
if (place_meeting(x, y + vsp, o_solid)) 
{
	while(!place_meeting(x, y + sign(vsp), o_solid))
	{
		y += sign(vsp);
	}
	vsp = 0;
}

y += vsp;

// Horizontal collision
if (place_meeting(x + hsp, y, o_solid))
{
	while(!place_meeting(x + sign(hsp), y, o_solid))
	{
		x += sign(hsp);
	}
	hsp = 0;
}

x += hsp;
#endregion

#region Animation
if (!place_meeting(x, y + 1, o_solid))
{
	sprite_index	= s_player_jump;
	image_speed		= 0;
} 
else 
{
	can_jump	= 10;
	sprite_index = s_player_run;	
	image_speed = animation_speed;
}
#endregion