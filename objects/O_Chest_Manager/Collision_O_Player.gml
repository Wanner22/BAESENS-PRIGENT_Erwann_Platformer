if O_Player.check_attack_button and not is_opened{
	switch obj {
		
		case S_Coin:
			O_Coin_Manager.coin_amount += 20;
		break;

		case S_Heal:
			if O_Player_Life_Manager.player_hp < 100{
				O_Player_Life_Manager.player_hp +=20;
				Sc_Green_Vignette();
			}
			break;
		
		case S_Key:
			O_Key_Manager.key_amount += 1;
			break;
		
		case S_Gun:
			O_Gun_Manager.can_shoot = true;
			break;
	}
	sprite_index = opened_spr;
	is_opened = true;
	is_shown = true;
	alarm_set(0, 60); //is_shown = false
}