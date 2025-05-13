window_set_size(1280, 720)
move_speed = 4;
jump_speed = 7;
global.gravity_force = 0.3;
xsp = 0;
ysp = 0;
is_attacking = false;
is_parrying = false;
can_parry = true;
can_attack = true;
check_attack_button = 0;
check_parry_button = 0;
check_aim_button = 0;
check_shoot_button = 0;
n_attack = 0;
is_aiming = false;
shoot_dir = 0;
gamepad_set_axis_deadzone(0, 0.4)
instance_create_layer(x + 32, y, "Instances", O_Action_Collision);
instance_create_layer(x + 32, y, "Instances", O_Attack);
instance_create_layer(x + 32, y, "Instances", O_Parry);