if is_stuned == true{
	if alarm_get(1) <= 0{
		alarm_set(1, 210); //is_stuned = false
	}
}
else{
	sprite_index = S_Boss;
}

if boss_hp <= 0{
	instance_destroy(self);
}
if (instance_exists(O_Tentacle) or instance_exists(O_Tentacle_Parry)) and not audio_is_playing(So_Earthquake) audio_play_sound(So_Earthquake, 0, false);