if O_Player_Life_Manager.player_hp < 100{
	O_Player_Life_Manager.player_hp += 20;
	effect_create_above(ef_spark, x, y, 1, c_white);
	Sc_Green_Vignette();
	instance_destroy();
}