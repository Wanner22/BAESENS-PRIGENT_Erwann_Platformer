var distancex_to_player = O_Player.x - x;
if not is_stuned and not O_Player_Death_Manager.is_dead{
	xsp = move_speed;
	ysp += global.gravity_force;
	
	//Détecte le joueur à une certaine distance
	if distance_to_object(O_Player) < fov event_user(1); //player_detected = true
	else if distance_to_object(O_Player) > fov event_user(2); //player_detected = false
	
	//Avancer vers le joueur quand il est détecté
	if player_detected{
		if distancex_to_player < 0 move_speed = -2.5; //Avancer vers la gauche
		else if distancex_to_player > 0 move_speed = 2.5; //Avancer vers la droite
	}
	
	if abs(distancex_to_player) < 3 move_speed = 0; //Se stopper quand il est au même x que le joueur (peu importe la hauteur)
	
	//S'arrêter devant le joueur et l'attaquer
	if distance_to_object(O_Player) < 7{
		move_speed = 0;
		if alarm_get(1) <= 0 and alarm_get(2) <= 0 alarm_set(1, 20); //Prepare attack
	}
	else sprite_index = S_Enemy;

	if place_meeting(x, y + 10, O_Collision_Manager.enemy_collisions) ysp = 0; //Voler à 10 pixels au dessus du sol

	//Aller vers la gauche si un obstacle est devant en allant vers la droite
	if place_meeting(x + 1, y, O_Collision_Manager.enemy_collisions)
	or place_meeting(x + 1, y, O_Collision_Manager.enemy_collisions)
	or not place_meeting(x + 16, y + 16, O_Collision_Manager.enemy_collisions){
		if not player_detected move_speed = -1;
		else move_speed = 0;
	}
	//Aller vers la droite si un obstacle est devant en allant vers la gauche
	else if place_meeting(x - 1, y, O_Collision_Manager.enemy_collisions)
	or place_meeting(x - 1, y, O_Collision_Manager.enemy_collisions)
	or not place_meeting(x - 16, y + 16, O_Collision_Manager.enemy_collisions){
		if not player_detected move_speed = 1;
		else move_speed = 0;
	}

	//Changer le sprite en fonction de la direction
	if sign(move_speed) == -1 image_xscale = 1;
	if sign(move_speed) == 1 image_xscale = -1;
	
	//Destroy si plus de PVs
	if enemy_hp <= 0{
		audio_stop_sound(So_Whispers);
		audio_stop_sound(So_Enemy_Music);
		instance_destroy(self);
	}

	//Changer l'alpha du sprite quand il est invincible
	if is_invincible image_alpha = 0.5;
	else image_alpha = 1;
}

move_and_collide(xsp, ysp, O_Collision_Manager.enemy_collisions, 50);