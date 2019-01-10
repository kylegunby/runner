
jump_pressed = mouse_check_button_pressed(mb_any);

// Make sure we are running
hsp = run_speed;

// Apply gravity
vsp += grv;
vsp = clamp(vsp, jump_velocity, term_velocity);

// Jumping
can_jump -= 1;
if (can_jump > 0 && jump_pressed) 
{
	vsp			= jump_velocity;
	can_jump	= 0;
}

// Animation
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

// Move and collide
move(hsp, vsp);

// Kill if fall off screen
if (y > room_height + BLOCK_HEIGHT * 2) instance_destroy();