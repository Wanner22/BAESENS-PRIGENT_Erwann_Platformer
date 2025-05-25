// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Sc_Draw_Controls(){
	if show_controls{
		draw_set_alpha(0.6);
		draw_set_color(c_black);
		draw_rectangle(0, 0, 1920, 1080, false);
		draw_set_alpha(1);
		draw_set_color(c_white);
		draw_set_valign(fa_middle);
		draw_set_halign(fa_center);
		for (var i = 0; i < array_length(keyboard_controls); i++){
			if gamepad_is_connected(0){
				var text = gamepad_controls[i];
				draw_text(1920/2, 350 + i * 64, text);
			}
			else{
				var text = keyboard_controls[i];
				draw_text(1920/2, 350 + i * 64, text);
			}
		}
		if gamepad_is_connected(0){
			draw_text_transformed(
			1920/2, 
			1080/2 + 300,
			"Appuyez sur B pour revenir en arriere",
			0.7,
			0.7,
			0);
		}
		else{
			draw_text_transformed(
			1920/2, 
			1080/2 + 300,
			"Appuyez sur Backspace pour revenir en arriere",
			0.7,
			0.7,
			0);
		}
	}
}