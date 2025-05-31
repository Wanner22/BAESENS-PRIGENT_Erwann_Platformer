if O_Attack.visible{
	audio_play_sound(So_Hit, 0, false);
	instance_create_layer(x, y, "Effects", O_White_Spark);
	instance_destroy();
}