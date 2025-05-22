if is_stuned == false{
	obj = irandom_range(0,1);
	if obj == 0{ //Attaque tentacule
		tenta = irandom_range(0, 2);
		if tenta == 0{
			instance_create_layer(O_Tentacle_Spawner.x, O_Tentacle_Spawner.y, "Projectiles", O_Tentacle_Parry);
		}
		else{
			instance_create_layer(O_Tentacle_Spawner.x, O_Tentacle_Spawner.y, "Projectiles", O_Tentacle);
		}
	}
	else if obj == 1{ //Lancer tonneau
		instance_create_layer(-32, random_range(0, 300), "Projectiles", O_Barrel);
	}
	randomise();
	alarm_set(0, random_range(30, 150)); //Créer l'objet
}