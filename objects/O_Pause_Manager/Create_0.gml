paused = false;
show_controls = false;
check_pause_button = keyboard_check_pressed(vk_escape) or gamepad_button_check_pressed(0, gp_start);
show_settings = false;
update_pause = function(){
	if paused{
		instance_deactivate_all(true);
		layer_set_visible("PauseLayer", true);
	}
	else{
		instance_activate_all();
		layer_set_visible("PauseLayer", false);
		layer_set_visible("ControlsLayer", false);
	}
}
update_pause();