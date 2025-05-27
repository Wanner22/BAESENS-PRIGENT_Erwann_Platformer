if O_Parry.visible == true{
	O_Boss.is_stuned = true;
	audio_play_sound(So_Pary, 0, false);
	instance_destroy(self);
}