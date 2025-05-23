if gamepad_is_connected(0){
	if layer_get_visible("PauseLayer"){
		if gamepad_button_check_pressed(0, gp_padd) and selected_id < 2{
			selected_id++;
		}
		if gamepad_button_check_pressed(0, gp_padu) and selected_id > 0{
			selected_id--;
		}
	}
	if layer_get_visible("ControlsLayer"){
		selected_id = 3;
	}
	if selected_id == button_id{
		is_selected = true;
		if gamepad_button_check_pressed(0, gp_face1){
			execute_button();
		}
	}
	else{
		is_selected = false;
	}
	if layer_get_visible("Title_Screen"){
		if gamepad_button_check_pressed(0, gp_padd){
			selected_id = 2;
		}
		if gamepad_button_check_pressed(0, gp_padu){
			selected_id = 4;
		}
	}
}
if is_selected{
	image_alpha = 0.5;
}
else{
	image_alpha = 1;
}