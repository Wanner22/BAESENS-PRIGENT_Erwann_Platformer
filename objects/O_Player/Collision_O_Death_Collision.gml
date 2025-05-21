is_dashing= false;	
if not place_meeting(pos_x + 5, pos_y + 5, O_Collision){
	x = pos_x - 64;
	show_debug_message("droite")
}
else if not place_meeting(pos_x - 5, pos_y + 5, O_Collision){
	x = pos_x + 64;
	show_debug_message("gauche")
}
else{
	x = pos_x;
	show_debug_message("mid")
}
y = pos_y;

show_debug_message(pos_y)
show_debug_message(y)
Sc_Reduce_Player_Life(10, 1);
