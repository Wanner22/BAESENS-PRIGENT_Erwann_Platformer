// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Sc_Pause(){
	if paused{
		if not surface_exists(pause_surface){
			layer_set_visible("Screen_Shake", false);
			layer_set_visible("Vignette", false);
			layer_set_visible("Twist_Blur", false);
			layer_set_visible("Zoom_Blur", false);
			layer_set_visible("Green_Vignette", false);
			gamepad_set_vibration(0, 0, 0);
			instance_deactivate_all(true);
			pause_surface = surface_create(1920, 1080);
			surface_set_target(pause_surface);
			draw_surface(application_surface, 0, 0);
			surface_reset_target();
		}
		else{
			draw_surface(pause_surface, 0, 0);
		}
	}
	else{
		instance_activate_all();
		pause_surface = -1;
	}
}