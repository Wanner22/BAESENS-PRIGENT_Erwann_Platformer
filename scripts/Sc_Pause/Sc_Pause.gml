// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Sc_Pause(){
	if paused{
		if not surface_exists(pause_surface){
			Sc_Deactivate_Effects();
			instance_deactivate_all(true);
			pause_surface = surface_create(1920, 1080);
			surface_set_target(pause_surface);
			draw_set_alpha(1);
			draw_surface(application_surface, 0, 0);
			surface_reset_target();
		}
		else{
			draw_set_alpha(1);
			draw_surface(pause_surface, 0, 0);
		}
	}
	else{
		instance_activate_all();
		pause_surface = -1;
	}
}