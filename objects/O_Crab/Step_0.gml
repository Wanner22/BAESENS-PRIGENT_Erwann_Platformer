ysp += global.gravity_force;
if place_meeting(x, y + 1, O_Collision_Manager.enemy_collisions) ysp = 0;

if sign(xsp) = -1 image_xscale = 1;
else if sign(xsp) > 0 image_xscale = -1;

if xsp != 0 sprite_index = S_Crab_Walk;
else sprite_index = S_Crab_IDLE;

move_and_collide(xsp, ysp, O_Collision_Manager.collisions, 50);