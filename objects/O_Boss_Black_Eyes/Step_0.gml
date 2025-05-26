if not O_Boss.is_stuned{
	sprite_index = S_Boss_Black_Eyes;
	x = xstart + O_Player.x * 0.18 - room_width/2*0.18;
	y = ystart + O_Player.y * 0.18
}
else{
	x = xstart;
	y = ystart;
	sprite_index = S_Boss_Stuned_Eyes;
}
if O_Boss.boss_hp <= 0{
	instance_destroy();
}