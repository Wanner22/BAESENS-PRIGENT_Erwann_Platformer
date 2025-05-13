/// @description Attack
if O_Player.is_parrying == false{
	sprite_index = S_Enemy_Attack;
	Sc_Reduce_Player_Life(1);
}
else {
	if place_meeting(x, y, O_Parry){
		sprite_index = S_Enemy_Stuned;
		is_stuned = true;
		if alarm_get(3) <= 0{
			alarm_set(3, 90);
		}
	}
}