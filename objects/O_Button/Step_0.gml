if gamepad_is_connected(0){
	if gamepad_button_check_pressed(0, gp_padd) and selected_id < 2{
		selected_id++;
	}
	if gamepad_button_check_pressed(0, gp_padu) and selected_id > 0{
		selected_id--;
	}
	if selected_id == button_id{
		is_selected = true;
		if gamepad_button_check_pressed(0, gp_face1){
			switch button_id{
				case 0: //Continuer
					O_Pause_Manager.paused = false;
					O_Pause_Manager.update_pause();
				break;
	
				case 1: //Controles
					O_Pause_Manager.show_controls = true;
				break;
	
				case 2: //Quitter
					game_end();
				break;
	
				case 3: //Retour
					O_Pause_Manager.show_controls = false;
				break;
			}
		}
	}
}
if is_selected{
	image_alpha = 0.5;
}
else{
	image_alpha = 1;
}
is_selected = false;
show_debug_message(selected_id)