if room == R_End{
	if O_Coin_Manager.coin_amount >= 75{
		draw_sprite_ext(S_End_Screen_Boat, 0, room_width/2, room_height/2 - 20, 0.7, 0.7, 0, c_white, 1);
		draw_set_color(c_white);
		draw_set_alpha(1);
		draw_set_valign(fa_middle);
		draw_set_halign(fa_center)
		draw_set_font(F_End);
		draw_text_ext(room_width/2, room_height/2 + 75, "Amaro repart riche avec le tresor et " + string(O_Coin_Manager.coin_amount) + " pieces sur le Queen Anne's Revenge", 16, 340);
	}
	else{
		draw_sprite_ext(S_End_Screen_Raft, 0, room_width/2, room_height/2 - 20, 0.7, 0.7, 0, c_white, 1);
		draw_set_color(c_white);
		draw_set_alpha(1);
		draw_set_valign(fa_middle);
		draw_set_halign(fa_center)
		draw_set_font(F_End);
		draw_text_ext(room_width/2, room_height/2 + 75, "Amaro repart avec le tresor sur un radeau contruit a partir des restes de son navire et " + string(O_Coin_Manager.coin_amount) + " pieces", 16, 340);
	}
}