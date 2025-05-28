if instance_exists(O_Player) and O_Player.is_attacking{
	if not audio_is_playing(So_Hit) audio_play_sound(So_Hit, 0, false);
	effect_create_above(ef_explosion, x, y, 0.2, c_white);
	instance_destroy();
}