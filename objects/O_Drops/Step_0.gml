x = xstart;
if image_index == 6 {
	image_speed = 0;
	ysp += global.gravity_force;
}
if place_meeting(x, y + 1, [O_Collision_Manager.my_tilemap, O_Player, O_Enemy, O_Crab]){
	if not audio_is_playing(So_Single_Droplet) and distance_to_object(O_Player) < 500{
		audio_play_sound(So_Single_Droplet, 0, false, 0.3);
	}
	ysp = 0;
	image_speed = 1;
}
if image_index == 12{
	image_index = 0;
	image_speed = 1;
	y = ystart;
}
move_and_collide(0, ysp, O_Collision_Manager.my_tilemap, 50);