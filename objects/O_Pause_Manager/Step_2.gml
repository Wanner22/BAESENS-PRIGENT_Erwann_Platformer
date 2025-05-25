if paused{
	var check_up_button = keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_up) or gamepad_button_check_pressed(0, gp_padu);
	var check_down_button = keyboard_check_pressed(ord("S")) or keyboard_check_pressed(vk_down) or gamepad_button_check_pressed(0, gp_padd);
	var check_valid_button = keyboard_check_pressed(vk_enter) or gamepad_button_check_pressed(0, gp_face1);
	selected_index += (check_down_button - check_up_button);
	if selected_index >= array_length(options) selected_index = 0;
	if selected_index < 0 selected_index = array_length(options) - 1;
	if check_valid_button{
		switch selected_index{
			case 0:
				paused = false;
				break;
			
			case 1:
				show_controls = true;
				break;
			
			case 2:
				game_end();
				break;
		}
	}
}