if is_dead{
	draw_set_color(c_black);
	draw_set_alpha(0.7);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	draw_rectangle(0, 0, 1920, 1080, false);
	draw_set_alpha(1);
	draw_set_color(c_red);
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	draw_text_transformed(1920/2, 1080/2, "Vous etes mort", 4, 4, 0);
	
	if gamepad_is_connected(0) draw_text_transformed(1920/2, 1080/2 + 300, "Appuyez sur A pour recommencer", 1, 1, 0);
	else draw_text_transformed(1920/2, 1080/2 + 300, "Appuyez sur n'importe quelle touche pour recommencer", 1, 1, 0);
}