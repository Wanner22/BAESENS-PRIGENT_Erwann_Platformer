if O_Key_Manager.key_amount > 0{
	O_Key_Manager.key_amount -= 1;
	audio_play_sound(So_Chest_Open, 0, false);
	instance_destroy();
}
else{
	show_key = true;
}