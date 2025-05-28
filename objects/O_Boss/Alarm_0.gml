/// @description Créer l'objet
if not is_stuned{
	obj = irandom_range(0,1);
	if obj == 0 and boss_hp <= 25{ //Attaque tentacule
		tenta = irandom_range(0, 2);
		if tenta == 0 instance_create_layer(O_Tentacle_Spawner.x, O_Tentacle_Spawner.y, "Projectiles", O_Tentacle_Parry);
		else instance_create_layer(O_Tentacle_Spawner.x, O_Tentacle_Spawner.y, "Projectiles", O_Tentacle);
	}
	else instance_create_layer(-32, random_range(0, 200), "Projectiles", O_Barrel); //Lancer le tonneau
	randomize();
	alarm_set(0, throw_time); //Créer l'objet
}