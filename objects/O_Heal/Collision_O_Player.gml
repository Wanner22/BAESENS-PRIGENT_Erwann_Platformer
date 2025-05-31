if O_Player_Life_Manager.player_hp < 100{
	O_Player_Life_Manager.player_hp += 50;
	audio_play_sound(So_Coin, 0, false);
	instance_create_layer(x, y, "Effects", O_White_Spark);
	Sc_Green_Vignette();
	instance_destroy();
}