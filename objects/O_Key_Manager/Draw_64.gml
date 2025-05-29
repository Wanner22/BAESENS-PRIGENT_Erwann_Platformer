if room != R_End{
	draw_set_font(F_UI);
	draw_set_color(c_white);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_color(c_white);
	draw_sprite_stretched(S_Key, 0, 1920 - 64 - 128, 128, 64, 64);
	draw_text(1920 - 96, 128, key_amount);
}