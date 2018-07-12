#region Get player input

jump_pressed = mouse_check_button_pressed(mb_any);

#endregion

#region Calculate movement

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

// Vertical Collision
if (place_meeting(x, y + vsp, o_platform)) 
{
	while(!place_meeting(x, y + sign(vsp), o_platform)) 
	{
		y += sign(vsp);
	}
	vsp = 0;
}

y += vsp;

#endregion

#region Animation
if (!place_meeting(x, y + 1, o_platform)) 
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