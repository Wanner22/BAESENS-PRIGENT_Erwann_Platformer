// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Sc_Screen_Shake(){
	layer_set_visible("Screen_Shake", true);
	with(O_Camera_Effects_Manager){
		if alarm_get(0) <= 0{
			alarm_set(0, 15);
		}
	}
}