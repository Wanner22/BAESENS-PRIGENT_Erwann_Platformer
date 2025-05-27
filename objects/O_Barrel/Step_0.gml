image_angle += 7;
if hp <= 0{
	instance_destroy();
}

if y >= 320{
	audio_play_sound(So_Break_Wood, 0, false, 0.5);
	instance_destroy();
}