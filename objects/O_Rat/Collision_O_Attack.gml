if instance_exists(O_Player){
	if O_Player.is_attacking{
		effect_create_above(ef_explosion, x, y, 0.2, c_white);
		instance_destroy();
		Sc_Vibrations(0.05, 0.05);
	}
}