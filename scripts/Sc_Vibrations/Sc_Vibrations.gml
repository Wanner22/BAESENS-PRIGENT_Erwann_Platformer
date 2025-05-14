// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Sc_Vibrations(vl, vr){
	with(O_Vibrations_Manager){
		if alarm_get(0) <= 0{
			alarm_set(0, 30)
		}
	}
	gamepad_set_vibration(0, vl, vr);
}