if room != R_End{
	draw_set_font(F_UI);
	draw_set_color(c_white);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_color(c_white);
	draw_text(32, 16, "PV");
	draw_healthbar(32, 80, 350, 110, player_hp, c_grey, c_red, c_green, 0, true, true);
}