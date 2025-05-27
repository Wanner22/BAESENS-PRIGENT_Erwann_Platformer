function Sc_Reduce_Player_Life(amount, alarm_value){
	if not O_Player_Life_Manager.is_invincible{
		with(O_Player_Life_Manager){
			if alarm_get(0) <= 0{
				alarm_set(0, alarm_value); // is_invincible = false
			}
		}
		Sc_Vibrations(1, 1);
		O_Player_Life_Manager.is_invincible = true;
		Sc_Screen_Shake();
		Sc_Vignette();
		if not audio_is_playing(So_Ough) audio_play_sound(So_Ough, 0, false);
		if not audio_is_playing(So_Hit) audio_play_sound(So_Hit, 0, false);
		O_Player_Life_Manager.player_hp -= amount;
	}
}