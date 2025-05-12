if O_Player_Life_Manager.is_invincible == false{
	if alarm_get(2) <= 0{
		alarm_set(2, 90);
	}
	O_Player_Life_Manager.is_invincible = true;
	O_Player_Life_Manager.player_hp -= 1;
}