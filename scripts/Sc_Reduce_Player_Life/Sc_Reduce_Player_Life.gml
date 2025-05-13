function Sc_Reduce_Player_Life(amount){
	if O_Player_Life_Manager.is_invincible == false{
		with(O_Player_Life_Manager){
			if alarm_get(0) <= 0{
				alarm_set(0, 90);
			}
		}
		O_Player_Life_Manager.is_invincible = true;
		O_Player_Life_Manager.player_hp -= amount;
	}
}