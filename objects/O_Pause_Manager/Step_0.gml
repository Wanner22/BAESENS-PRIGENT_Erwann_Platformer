if room != R_End{
	var check_pause_button = keyboard_check_pressed(vk_escape) or gamepad_button_check_pressed(0, gp_start);
	var check_back_button = keyboard_check_pressed(vk_backspace) or gamepad_button_check_pressed(0, gp_face2);

	if check_pause_button{
		paused = !paused;
		if show_controls{
			paused = false;
			show_controls = false;
		}
	}

	if not paused show_controls = false;

	if check_back_button{
		if show_controls show_controls = false;
		else if paused and not show_controls paused = false;
	}
}