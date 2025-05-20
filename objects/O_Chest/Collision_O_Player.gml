if O_Player.check_attack_button and not is_opened{
	if obj == S_Coin{
		O_Coin_Manager.coin_amount += 20;
	}
	else if obj == S_Heal{
		if O_Player_Life_Manager.player_hp < 100{
			O_Player_Life_Manager.player_hp +=20;
			Sc_Green_Vignette();
		}
	}
	else if obj == S_Key{
		O_Key_Manager.key_amount += 1;
	}
	sprite_index = S_Chest_Opened;
	is_opened = true;
	is_shown = true;
	alarm_set(0, 60); //is_shown = false
}