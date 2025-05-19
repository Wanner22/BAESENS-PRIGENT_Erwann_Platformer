if O_Player_Life_Manager.player_hp < 100{
	O_Player_Life_Manager.player_hp += 20;
	Sc_Green_Vignette();
	instance_destroy();
}