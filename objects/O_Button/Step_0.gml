var check_valid_button = mouse_check_button_released(mb_left) or gamepad_button_check_pressed(0, gp_face1);
if distance_to_point(mouse_x, mouse_y) <= 0 and not gamepad_is_connected(0){
	is_selected = true
}
else{
	is_selected = false;
}

if gamepad_is_connected(0){ // Changer de bouton avec la manette
	if selected_id == button_id{
		is_selected = true;
	}
	var check_up_button = gamepad_button_check_pressed(0, gp_padu);
	var check_down_button = gamepad_button_check_pressed(0, gp_padd);
	if selected_id > 1 selected_id = 0;
	if selected_id < 0 selected_id = 1;
	if check_up_button{
		selected_id -= 1;
	}
	if check_down_button{
		selected_id += 1;
	}
}

if is_selected{ //Changer le bouton quand il est selectionné
	image_alpha = lerp(image_alpha, 0.8, 0.2);
	image_xscale = lerp(image_xscale, target_xscale, 0.4);
	image_yscale = lerp(image_yscale, target_yscale, 0.4);
}
else{
	image_alpha = lerp(image_alpha, 1, 0.2);
	image_xscale = lerp(image_xscale, normal_xscale, 0.4);
	image_yscale = lerp(image_yscale, normal_yscale, 0.4);
}
if check_valid_button and is_selected{ //Executer le bouton séléctionné
	switch button_id{
		case 0:
			room_goto(R_Level1);
			break;
	
		case 1:
			game_end();
			break;
	}
}