var check_pause_button = keyboard_check_pressed(vk_escape) or gamepad_button_check_pressed(0, gp_start);

if check_pause_button{
	show_controls = false;
	paused = !paused;
}

if paused{
	instance_deactivate_all(true);
	if show_controls{
		layer_set_visible("ControlsLayer", true);
	}
	else{
		layer_set_visible("ControlsLayer", false);
		layer_set_visible("PauseLayer", true);
	}
}
else{
	instance_activate_all();
	layer_set_visible("PauseLayer", false);
	layer_set_visible("ControlsLayer", false)
}