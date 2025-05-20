if keyboard_check_pressed(vk_escape) or gamepad_button_check_pressed(0, gp_start){
	show_controls = false;
	paused = !paused;
	update_pause();
}

if paused{
	instance_deactivate_all(true);
	if show_controls{
		layer_set_visible("PauseLayer", false);
		layer_set_visible("ControlsLayer", true);
	}
	else{
		layer_set_visible("PauseLayer", true);
		layer_set_visible("ControlsLayer", false);
	}
}
else{
	instance_activate_all();
	layer_set_visible("PauseLayer", false);
	layer_set_visible("ControlsLayer", false);
}