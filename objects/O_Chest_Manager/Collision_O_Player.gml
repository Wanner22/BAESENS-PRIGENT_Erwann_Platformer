if O_Player.check_attack_button and not is_opened{
	switch obj {
		case S_Coin:
		audio_play_sound(So_Coin, 0, false);
			O_Coin_Manager.coin_amount += 20;
			is_opened = true;
		break;

		case S_Heal:
			if O_Player_Life_Manager.player_hp < 100{
				O_Player_Life_Manager.player_hp += 50;
				Sc_Green_Vignette();
				is_opened = true;
			}
			else is_opened = false;
			break;
		
		case S_Key:
		audio_play_sound(So_Coin, 0, false);
			O_Key_Manager.key_amount += 1;
			is_opened = true;
			break;
		
		case S_Gun:
			O_Gun_Manager.can_shoot = true;
			is_opened = true;
			break;
	}
	is_shown = true;
	sprite_index = opened_spr;
	if not audio_is_playing(So_Chest_Open) audio_play_sound(So_Chest_Open, 0, false, 2);
	alarm_set(0, 60); //is_shown = false
}