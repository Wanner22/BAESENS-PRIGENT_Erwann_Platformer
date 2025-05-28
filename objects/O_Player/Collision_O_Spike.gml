is_dashing= false;
Sc_Reduce_Player_Life(10, 60);

if is_grounded{
	if place_meeting(x + 32, y, O_Spike) x -= 64;
	else if place_meeting(x - 32, y, O_Spike) x += 64;
}

else{
	if not place_meeting(pos_x + 5, pos_y + 5, O_Collision_Manager.collisions) x = pos_x - 64;
	else if not place_meeting(pos_x - 5, pos_y + 5, O_Collision_Manager.collisions) x = pos_x + 64;
	else x = pos_x;
	y = pos_y;
}