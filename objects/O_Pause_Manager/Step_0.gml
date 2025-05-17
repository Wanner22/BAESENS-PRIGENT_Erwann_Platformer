if keyboard_check_pressed(vk_escape) or gamepad_button_check_pressed(0, gp_start){
	paused = !paused;
}
if paused{
	layer_set_visible("PauseLayer", true);
	instance_deactivate_all(true);
}
else{
	layer_set_visible("PauseLayer", false);
	instance_activate_all();
}