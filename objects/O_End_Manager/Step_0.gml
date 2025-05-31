var check_valid_button = keyboard_check_pressed(vk_anykey) or mouse_check_button_pressed(mb_any) or gamepad_button_check_pressed(0, gp_face1);
if room == R_End and check_valid_button game_restart();