if player_hp > 100{
	player_hp = 100;
}
if player_hp <= 0{
	O_Death_Manager.is_dead = true;
	instance_deactivate_object(O_Player);
}