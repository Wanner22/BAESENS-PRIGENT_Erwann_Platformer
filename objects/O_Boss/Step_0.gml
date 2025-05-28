if is_stuned{
	if alarm_get(1) <= 0 alarm_set(1, 210); //is_stuned = false
}
else sprite_index = S_Boss;

if boss_hp <= 15 and not is_stuned{
	throw_time = irandom_range(30, 90);
	Sc_Screen_Shake();
	Sc_Zoom_Blur();
	O_Boss_Black_Eyes.sprite_index = S_Boss_Red_Eyes;
	O_Boss_White_Eyes.sprite_index = S_Boss_Red_White_Eyes;
}
if boss_hp <= 0{
	with(O_Player){
		if alarm_get(8) <= 0 alarm_set(8, 150);
	}
	instance_destroy();
}