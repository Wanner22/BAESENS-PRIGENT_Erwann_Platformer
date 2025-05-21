ysp += global.gravity_force;
if place_meeting(x, y + 1, O_Collision_Manager.collisions){
	ysp = 0; 
}
move_and_collide(0, ysp, O_Collision_Manager.collisions);