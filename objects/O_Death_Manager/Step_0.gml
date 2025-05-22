var check_confirm_button = keyboard_check_pressed(vk_anykey) or gamepad_button_check_pressed(0, gp_face1);
if is_dead and check_confirm_button{
	instance_activate_object(O_Player);
	O_Player_Life_Manager.player_hp = 100;
	game_restart();
	is_dead = false;
}