// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Sc_Draw_Menu(){
	if paused and not show_controls{
		draw_set_color(c_black);
		draw_set_alpha(0.6);
		draw_rectangle(0, 0, 1920, 1080, false);
		draw_set_color(c_white);
		draw_set_alpha(1);
		draw_set_valign(fa_middle);
		draw_set_halign(fa_center);
		draw_text(1920/2, 1080/2, "PAUSE");
		for (var i = 0; i < array_length(options); i++){
			var text = "";
			var x_scale = 1;
			var y_scale = 1;
			if i = selected_index{
				text += ">" + options[i] + "<";
				x_scale = 1.2;
				y_scale = 1.2;
			}
			else{
				text = options[i];
				x_scale = 1;
				y_scale = 1
				draw_set_alpha(0.4);
			}
			draw_text_transformed(1920/2, 1080/2 + 128 + i * 64, text, x_scale, y_scale, 0);
			draw_set_alpha(1);
		}
	}
}