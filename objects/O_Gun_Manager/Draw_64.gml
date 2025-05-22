if can_shoot{
	draw_sprite_stretched(S_Gun, 0, 1920 - 64 - 128, 224, 64, 64);
	draw_text(1920 - 128, 224, O_Bullet_Manager.bullet_amount);
}