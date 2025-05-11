var stick_dir_x = gamepad_axis_value(0, gp_axislh)
var is_grounded = false;
ysp += gravity_force;
xsp = 0;
sprite_index = S_Player;

gpu_set_tex_filter(false); //Enlève le filtre qui floute les pixels

O_Action_Collision.y = y; //Fixe les coordonnées de O_Action_Collision en y


//Déplacement horizontal clavier
if keyboard_check(ord("Q")){
	xsp = -move_speed;
}

if keyboard_check(ord("D")){
	xsp = move_speed;
}

if keyboard_check(ord("Q")) and keyboard_check(ord("D")){
	xsp = 0;
}


//Déplacement horizontal manette
if gamepad_is_connected(0){
	xsp = stick_dir_x * move_speed;
}

//Changer le sprite en fonction de la direction
if sign(xsp) == -1{
	image_xscale = -1;
	O_Action_Collision.x = x - 32; //Fixe les coordonnées de O_Action_Collision en x
	O_Action_Collision.image_xscale = -1; //Orienter le sprite
}
else if sign(xsp) == 1{
	image_xscale = 1;
	O_Action_Collision.x = x + 32; //Fixe les coordonnées de O_Action_Collision en x
	O_Action_Collision.image_xscale = 1; //Orienter le sprite
}

//Saut et grounded
if place_meeting(x, y+2, O_Floor){
	is_grounded = true;
	ysp = 0;
	if keyboard_check_pressed(vk_space) or gamepad_button_check_pressed(0,gp_face1){
		ysp = -jump_speed;
	}
}

//Attaque
if is_parrying ==false and mouse_check_button_pressed(mb_left) 
or is_parrying == false and gamepad_button_check_pressed(0, gp_face3){
	is_attacking = true;
	O_Attack.image_index = 0; // Reset l'animation
	alarm_set(0, 10);
}

//Parade
if is_attacking == false and mouse_check_button_pressed(mb_right) 
or is_attacking == false and gamepad_button_check_pressed(0, gp_shoulderl){
	is_parrying = true;
	O_Parry.image_index = 0; //Reset l'animation
	alarm_set(1, 10);
}

if is_attacking == true{
	sprite_index = S_Player_Attack;
	O_Attack.visible = true;
}

if is_parrying == true{
	sprite_index = S_Player_Attack;
	O_Parry.visible = true;
}

move_and_collide(xsp, ysp, O_Floor);