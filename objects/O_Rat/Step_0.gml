ysp += global.gravity_force;
if place_meeting(x, y + 1, O_Collision_Manager.collisions){
	ysp = 0;
}
if xsp < 0{
	image_xscale = 1;
}
else if xsp > 0{
	image_xscale = -1;
}
move_and_collide(xsp, ysp, O_Collision_Manager.collisions, 50);