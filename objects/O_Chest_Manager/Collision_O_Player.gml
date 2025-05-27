if O_Player.check_attack_button and not is_opened{
	switch obj {
		case S_Coin:
			O_Coin_Manager.coin_amount += 20;
			is_opened = true;
		break;

		case S_Heal:
			if O_Player_Life_Manager.player_hp < 100{
				O_Player_Life_Manager.player_hp +=20;
				Sc_Green_Vignette();
				is_opened = true;
			}
			else is_opened = false;
			break;
		
		case S_Key:
			O_Key_Manager.key_amount += 1;
			is_opened = true;
			break;
		
		case S_Gun:
			O_Gun_Manager.can_shoot = true;
			is_opened = true;
			break;
	}
	sprite_index = opened_spr;
	is_shown = true;
	alarm_set(0, 60); //is_shown = false
}