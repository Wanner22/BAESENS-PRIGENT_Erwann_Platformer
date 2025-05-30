if O_Parry.visible{
	O_Boss.is_stuned = true;
	audio_play_sound(So_Pary, 0, false);
	if audio_is_playing(So_Earthquake) audio_stop_sound(So_Earthquake);
	O_Boss.killed_tentacle = true;
	instance_destroy(self);
}