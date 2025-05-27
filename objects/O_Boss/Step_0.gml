if is_stuned{
	if alarm_get(1) <= 0 alarm_set(1, 210); //is_stuned = false
}
else{
	sprite_index = S_Boss;
}

if boss_hp <= 0{
	instance_destroy(self);
}