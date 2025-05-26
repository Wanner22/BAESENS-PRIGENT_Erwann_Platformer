if room_to_go == R_Boss{
	O_Player_Life_Manager.player_hp = 100;
	O_Gun_Manager.bullet_amount = O_Gun_Manager.bullet_max;
}
room_goto(room_to_go);