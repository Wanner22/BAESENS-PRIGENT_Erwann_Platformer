if hp <= 0{
	audio_play_sound(So_Break_Wood, 0, false, 0.5);
	instance_destroy();
}