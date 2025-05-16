if O_Attack.visible and is_stuned and not is_invincible{
	boss_hp -= 1;
	Sc_Vibrations(0.2, 0.2);
	Sc_Screen_Shake();
	is_invincible = true;
	alarm_set(2, 20); //is_invincible = false
}