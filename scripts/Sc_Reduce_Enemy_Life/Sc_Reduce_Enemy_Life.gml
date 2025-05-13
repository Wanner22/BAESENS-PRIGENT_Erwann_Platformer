function Sc_Reduce_Enemy_Life(){
	if is_invincible == false{
		if alarm_get(0) <= 0{
			alarm_set(0, 10); //is_invincible = false
		}
		Sc_Screen_Shake();
		event_user(0);
	}
	is_invincible = true;
}