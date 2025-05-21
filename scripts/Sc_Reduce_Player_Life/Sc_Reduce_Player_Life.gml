function Sc_Reduce_Player_Life(amount, alarm_value){
	if O_Player_Life_Manager.is_invincible == false{
		with(O_Player_Life_Manager){
			if alarm_get(0) <= 0{
				alarm_set(0, alarm_value); // is_invincible = false
			}
		}
		Sc_Vibrations(1, 1);
		O_Player_Life_Manager.is_invincible = true;
		Sc_Screen_Shake();
		Sc_Vignette();
		O_Player_Life_Manager.player_hp -= amount;
	}
}