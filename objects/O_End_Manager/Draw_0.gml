if room == R_End{
	if O_Coin_Manager.coin_amount >= 75 draw_sprite(S_End_Screen_Boat, 0, 0, 0);
	else draw_sprite(S_End_Screen_Raft, 0, 0, 0);
}