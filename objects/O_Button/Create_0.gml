is_selected = false;
selected_id = 0;
execute_button = function(){
	switch button_id{
		case 0: //Continuer
			O_Pause_Manager.paused = false;
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