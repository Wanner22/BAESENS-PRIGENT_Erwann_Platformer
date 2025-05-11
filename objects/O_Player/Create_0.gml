window_set_size(1280, 720)
move_speed = 4;
jump_speed = 7;
gravity_force = 0.3;
xsp = 0;
ysp = 0;
is_attacking = false;
is_parrying = false;
gamepad_set_axis_deadzone(0, 0.4)
instance_create_layer(x + 32, y, "Instances", O_Action_Collision);
instance_create_layer(x + 32, y, "Instances", O_Attack);
instance_create_layer(x + 32, y, "Instances", O_Parry);