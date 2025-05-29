// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Sc_Draw_Text(my_text){
	draw_set_color(c_black);
	draw_set_alpha(0.3);
	draw_rectangle(384, 1080 - 250, 1920 - 384, 1080 - 100, false);
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_set_font(F_Text_Box);
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	draw_text_ext(1920/2, 1080 - 300 + 125, my_text, 16*3, 1152 - 384/2);
}
function Sc_Show_Text(my_text){
	O_Text_Manager.text = my_text;
	O_Text_Manager.show_text = true;
}