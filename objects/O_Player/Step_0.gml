var l_stick_dir_x = gamepad_axis_value(0, gp_axislh);
var l_stick_dir_y = gamepad_axis_value(0, gp_axislv);
check_attack_button = is_parrying ==false and (mouse_check_button_pressed(mb_left) or gamepad_button_check_pressed(0, gp_face3));
check_parry_button = is_attacking == false and (keyboard_check_pressed(ord("F")) or gamepad_button_check_pressed(0, gp_shoulderl));
check_aim_button = mouse_check_button(mb_right) or gamepad_button_check(0, gp_shoulderlb);
check_shoot_button = mouse_check_button_pressed(mb_left) or gamepad_button_check_pressed(0, gp_shoulderrb);
check_dash_button = keyboard_check_pressed(vk_control) or gamepad_button_check_pressed(0, gp_shoulderr);
ysp += global.gravity_force;
xsp = 0;

gpu_set_tex_filter(false); //Enlève le filtre qui floute les pixels

show_debug_overlay(false);


if keyboard_check_pressed(ord("R")){
	room_restart();
}


O_Action_Collision.y = y; //Fixe les coordonnées de O_Action_Collision en y

//Visée
if gamepad_is_connected(0){
	shoot_dir = point_direction(x, y, x + l_stick_dir_x, y + l_stick_dir_y);
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

//Changer le sprite IDLE ou Course
if not check_aim_button and xsp != 0 and is_grounded == true{
	sprite_index = S_Player_Run;
}
else{
	sprite_index = S_Player_IDLE;
}


//Changer le sprite en fonction de la direction et fixe le O_Action_Collision devant le joueur
if sign(xsp) == -1{
	image_xscale = -1;
	O_Action_Collision.x = x + sprite_width/2; //Fixe les coordonnées de O_Action_Collision en x
	O_Action_Collision.image_xscale = -1; //Orienter le sprite
}
else if sign(xsp) == 1{
	image_xscale = 1;
	O_Action_Collision.x = x + sprite_width/2; //Fixe les coordonnées de O_Action_Collision en x
	O_Action_Collision.image_xscale = 1; //Orienter le sprite
}

//Saut et grounded
if place_meeting(x, y+2, O_Collision){
	is_grounded = true;
	ysp = 0;
	if keyboard_check_pressed(vk_space) or gamepad_button_check_pressed(0,gp_face1){
		ysp = -jump_speed;
	}
}
else{
	is_grounded = false;
}

//Attaque
if check_attack_button and can_attack and not is_aiming{	
	image_index = 0	
	alarm_set(5, 20); //n_attack = 0
	n_attack++;
	is_attacking = true;
	O_Attack.image_index = 0; // Reset l'animation
	alarm_set(0, 20); //is_attacking = false
	if alarm_get(4) <= 0 and n_attack >= 3{
		alarm_set(4, 45); // cooldown après le combo
		can_attack = false;
	}
}

//Parade
if check_parry_button and can_parry and not is_aiming{
	image_index = 0
	is_parrying = true;
	O_Parry.image_index = 0; //Reset l'animation
	alarm_set(1, 15); //is_parrying = true
	alarm_set(3, 30); //cooldown parade
	can_parry = false;
}

//Changer le sprite quand le joueur attaque ou pare
if is_attacking{
	sprite_index = S_Player_Attack;
	O_Attack.visible = true;
}

if is_parrying{
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

//Tirs et visée
if check_aim_button and is_grounded{
	O_Player_Arm.visible = true;
	if O_Player.shoot_dir > 90 and O_Player.shoot_dir < 270{
		image_xscale = -1;
		O_Action_Collision.x = x + sprite_width/2; //Fixe les coordonnées de O_Action_Collision en x
		O_Action_Collision.image_xscale = -1; //Orienter le sprite
	}
	else{
		image_xscale = 1;
		O_Action_Collision.x = x + sprite_width/2; //Fixe les coordonnées de O_Action_Collision en x
		O_Action_Collision.image_xscale = 1; //Orienter le sprite
	}
	sprite_index = S_Player_Shoot;
	is_aiming = true;
	xsp = 0;
	if check_shoot_button{
		if gamepad_is_connected(0) and l_stick_dir_y + l_stick_dir_x != 0{
			instance_create_layer(x, y - 17, "Instances", O_Bullet);
		}
		else if not gamepad_is_connected(0){
			instance_create_layer(x, y - 17, "Instances", O_Bullet);
		}
	}
}
else {
	O_Player_Arm.visible = false;
	is_aiming = false;
}

//Dash
if check_dash_button and can_dash and xsp != 0{
	Sc_Zoom_Blur();
	Sc_Screen_Shake();
	alarm_set(6, 7); //is_dashing = false
	alarm_set(7, 45); // can_dash = true
	is_dashing = true;
	can_dash = false;
}

if is_dashing == true{
	xsp *= 5;		
}

//Changer le sprite du joueur quand il saute
if not is_grounded and not is_attacking{
	if ysp < 0{
		sprite_index = S_Player_Jump_Up;
	}
	else if ysp > 0{
		sprite_index = S_Player_Jump_Down;
	}
}


move_and_collide(xsp, ysp, O_Collision, 10);