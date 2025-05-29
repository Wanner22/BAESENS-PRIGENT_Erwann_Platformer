if instance_exists(O_Player) and O_Player.is_attacking{
	if not audio_is_playing(So_Hit) audio_play_sound(So_Hit, 0, false);
	Sc_Reduce_Enemy_Life();
}