var l_stick_dir_x = gamepad_axis_value(0, gp_axislh);
var r_stick_dir_x = gamepad_axis_value(0, gp_axisrh);
var r_stick_dir_y = gamepad_axis_value(0, gp_axisrv);
var is_grounded = false;
check_attack_button = is_parrying ==false and (mouse_check_button_pressed(mb_left) or gamepad_button_check_pressed(0, gp_face3));
check_parry_button = is_attacking == false and (keyboard_check_pressed(ord("F")) or gamepad_button_check_pressed(0, gp_shoulderl));
check_aim_button = mouse_check_button(mb_right) or gamepad_button_check(0, gp_shoulderlb);
check_shoot_button = mouse_check_button_pressed(mb_left) or gamepad_button_check_pressed(0, gp_shoulderrb);
ysp += global.gravity_force;
xsp = 0;
sprite_index = S_Player;

gpu_set_tex_filter(false); //Enlève le filtre qui floute les pixels

O_Action_Collision.y = y; //Fixe les coordonnées de O_Action_Collision en y

if gamepad_is_connected(0){
	shoot_dir = point_direction(x, y, x +  r_stick_dir_x, y + r_stick_dir_y);
}
else {
	shoot_dir = point_direction(x, y, mouse_x, mouse_y);
}

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
	xsp = l_stick_dir_x * move_speed;
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
if place_meeting(x, y+1, O_Floor){
	is_grounded = true;
	ysp = 0;
	if keyboard_check_pressed(vk_space) or gamepad_button_check_pressed(0,gp_face1){
		ysp = -jump_speed;
	}
}

//Attaque
if check_attack_button and can_attack{
	alarm_set(5, 20);
	n_attack++;
	is_attacking = true;
	O_Attack.image_index = 0; // Reset l'animation
	alarm_set(0, 10);
	if alarm_get(4) <= 0 and n_attack >= 3{
		alarm_set(4, 45);
		can_attack = false;
	}
}

//Parade
if check_parry_button and can_parry{
	is_parrying = true;
	O_Parry.image_index = 0; //Reset l'animation
	alarm_set(1, 10);
	alarm_set(3, 30);
	can_parry = false;
}

//Changer le sprite quand le joueur attaque ou pare
if is_attacking == true{
	sprite_index = S_Player_Attack;
	O_Attack.visible = true;
}

if is_parrying == true{
	sprite_index = S_Player_Attack;
	O_Parry.visible = true;
}

//Restart la room quand le joueur meurt
if O_Player_Life_Manager.player_hp <=0{
	room_restart()
}

//Changer l'alpha du sprite quand il est invincible
if O_Player_Life_Manager.is_invincible == true{
	image_alpha = 0.5;
}
else {
	image_alpha = 1;
}

if check_aim_button{
	is_aiming = true;
	xsp = 0;
	if check_shoot_button{
		show_debug_message("coucou")
		instance_create_layer(x, y, "Instances", O_Bullet);
	}
}


move_and_collide(xsp, ysp, O_Floor, 10);