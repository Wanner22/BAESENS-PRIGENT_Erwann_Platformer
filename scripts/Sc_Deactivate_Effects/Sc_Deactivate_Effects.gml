// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Sc_Deactivate_Effects(){
	layer_set_visible("Screen_Shake", false);
	layer_set_visible("Vignette", false);
	layer_set_visible("Twist_Blur", false);
	layer_set_visible("Zoom_Blur", false);
	layer_set_visible("Green_Vignette", false);
	gamepad_set_vibration(0, 0, 0);
}