if distance_to_point(mouse_x, mouse_y) <= 0 and not gamepad_is_connected(0){
	effect_create_above(ef_smokeup, mouse_x, mouse_y, 1, c_white);
}