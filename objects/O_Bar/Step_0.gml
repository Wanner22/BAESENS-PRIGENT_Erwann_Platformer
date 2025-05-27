//Afficher le sprite si il peut apparaître
if can_appear{
	sprite_index = S_Bar;
	parent_obj.sprite_index = S_Sphere;
}
else{
	sprite_index = noone;
	parent_obj.sprite_index = noone;
}

//Mort du mob
if parent_obj.hp <= 0 image_yscale -= 0.2;

if image_yscale <= 0{
	instance_destroy();
	instance_destroy(parent_obj);
}

if O_Gun_Manager.can_shoot can_appear = true;