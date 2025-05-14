/// @description Attack
if O_Player.is_parrying == false{
	sprite_index = S_Enemy_Attack;
	if distance_to_object(O_Player) < 3{
		Sc_Reduce_Player_Life(1);
	}
}
else {
	if place_meeting(x, y, O_Parry){
		Sc_Vibrations(0.3, 0.3);
		sprite_index = S_Enemy_Stuned;
		is_stuned = true;
		Sc_Twist_Blur();
		if alarm_get(3) <= 0{
			alarm_set(3, 90); //is_stuned = false
		}
	}
}