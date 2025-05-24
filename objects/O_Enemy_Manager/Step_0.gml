if is_stuned == false{
	xsp = move_speed;
	ysp += global.gravity_force;
	
	//Détecte le joueur à une certaine distance
	if instance_exists(O_Player){
		if abs(O_Player.x - x) < fov{
			event_user(1);
		}
		else{
			event_user(2);
		}

		//Avancer vers le joueur
		if player_detected == true{
			if O_Player.x - x < 0{
				move_speed = -1;
			}
			else if O_Player.x - x > 0{
				move_speed = 1;
			}
		}

		//S'arrêter devant le joueur et l'attaquer
		if distance_to_object(O_Player) < 3{
			move_speed = 0;
			if alarm_get(1) <= 0 and alarm_get(2) <= 0{
				alarm_set(1, 10); //Prepare attack
			}
		}
		else{
			sprite_index = S_Enemy;
		}

		if place_meeting(x, y+1, O_Collision_Manager.collisions){
			ysp = 0;
		}

		if player_detected == false{
			//Changer de direction quand il atteint une limite
			if place_meeting(x + 2, y, O_Collision_Manager.collisions) or not place_meeting(x + 16, y + 1, O_Collision_Manager.collisions){
				move_speed = -1;
			}
			if place_meeting(x - 2, y, O_Collision_Manager.collisions) or not place_meeting(x - 16, y + 1, O_Collision_Manager.collisions){
				move_speed = 1;
			}
		}


		//Changer le sprite en fonction de la direction
		if sign(move_speed) == -1{
			image_xscale = -1;
		}
		if sign(move_speed) == 1{
			image_xscale = 1;
		}

		if enemy_hp <= 0{
			instance_destroy(self);
		}
	}

	//Changer l'alpha du sprite quand il est invincible
	if is_invincible == true{
		image_alpha = 0.5;
	}
	else {
		image_alpha = 1;
	}
	move_and_collide(xsp, ysp, O_Collision_Manager.collisions, 10);
}