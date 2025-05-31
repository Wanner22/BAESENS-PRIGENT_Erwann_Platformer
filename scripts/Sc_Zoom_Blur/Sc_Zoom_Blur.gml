// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Sc_Zoom_Blur(){
	layer_set_visible("Zoom_Blur", true);
	with(O_Camera_Effects_Manager){
		if alarm_get(0) <= 0{
			alarm_set(0, 15);
		}
	}
}