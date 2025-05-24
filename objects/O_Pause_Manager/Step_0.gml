var check_pause_button = keyboard_check_pressed(vk_escape) or gamepad_button_check_pressed(0, gp_start);

if paused{
	layer_set_visible("Screen_Shake", false);
	layer_set_visible("Vignette", false);
	layer_set_visible("Twist_Blur", false);
	layer_set_visible("Zoom_Blur", false);
	layer_set_visible("Green_Vignette", false);
	gamepad_set_vibration(0, 0, 0);
	instance_deactivate_all(true);
}
else{
	instance_activate_all();
}


if check_pause_button{
	paused = !paused;
}