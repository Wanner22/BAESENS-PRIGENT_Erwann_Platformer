//Debug et paramètres
window_set_size(1920, 1080);
gpu_set_tex_filter(false); //Enlève le filtre qui floute les pixels
show_debug_overlay(false);
layer_set_visible("Collisions", false);
is_debug = false;
debug_room = R_Boss;

//Variables gameplay
shoot_dir = 0;
move_speed = 4.5;
jump_speed = 8;
global.gravity_force = 0.3;
xsp = 0;
ysp = 0;
is_attacking = false;
is_parrying = false;
is_dashing = false;
can_parry = true;
can_attack = true;
can_dash = true;
check_attack_button = 0;
check_parry_button = 0;
check_aim_button = 0;
check_shoot_button = 0;
check_dash_button = 0;
n_attack = 0;
is_aiming = false;
is_grounded = true;
pos_x = 0;
pos_y = 0;

gamepad_set_vibration(0, 0, 0);
gamepad_set_axis_deadzone(0, 0.4);
instance_create_layer(x + 32, y, "Collisions", O_Action_Collision);
instance_create_layer(x + 32, y, "Player", O_Attack);
instance_create_layer(x + 32, y, "Player", O_Parry);
instance_create_layer(x, y - 10, "Player_Arm", O_Player_Arm);

if is_debug{
	if room != debug_room room_goto(debug_room);
}