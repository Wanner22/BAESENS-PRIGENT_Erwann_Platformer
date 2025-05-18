if keyboard_check_pressed(vk_escape) or gamepad_button_check_pressed(0, gp_start){
	show_controls = false;
	paused = !paused;
	update_pause();
}
if show_controls{
	layer_set_visible("ControlsLayer", true);
}