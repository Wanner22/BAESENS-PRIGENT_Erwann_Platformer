if room == R_Title_Screen or room == R_End{
	if not audio_is_playing(So_Title_Screen){
		audio_stop_all();
		audio_play_sound(So_Title_Screen, 0, true);
	}
}
else if room == R_Level1 or room == R_Level2{
	audio_stop_sound(So_Title_Screen);
	audio_stop_sound(So_Boss);
	if not audio_is_playing(So_General_Music) audio_play_sound(So_General_Music, 0, true, 0.7);
}
else if room == R_Boss{
	audio_stop_sound(So_Title_Screen);
	audio_stop_sound(So_General_Music);
	if not audio_is_playing(So_Boss) audio_play_sound(So_Boss, 0, true, 2);
}