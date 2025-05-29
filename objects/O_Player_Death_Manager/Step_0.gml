var check_confirm_button = keyboard_check_pressed(vk_anykey) or gamepad_button_check_released(0, gp_face1) or mouse_check_button_pressed(mb_any);
if is_dead and check_confirm_button{
	Sc_Deactivate_Effects();
	instance_activate_object(O_Player);
	O_Player_Life_Manager.player_hp = 100;
	is_dead = false;
	room_restart();
	O_Player.x = O_Player_Checkpoint.x;
	O_Player.y = O_Player_Checkpoint.y;
}