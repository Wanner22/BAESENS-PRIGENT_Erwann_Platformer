if O_Player.is_attacking == true{
	if is_invincible == false{
		if alarm_get(0) <= 0{
			alarm_set(0, 45);
		}
		event_user(0);
	}
	is_invincible = true;
}