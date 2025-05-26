if can_shoot{
	draw_set_font(F_UI);
	draw_set_color(c_white);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_color(c_white);
	draw_sprite_stretched(S_Gun, 0, 1920 - 64 - 128, 224, 64, 64);
	draw_text(1920 - 128, 224, O_Gun_Manager.bullet_amount);
}