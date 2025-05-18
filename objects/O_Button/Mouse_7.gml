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
}