//Attaque tentacule
if keyboard_check_pressed(vk_numpad1){
	instance_create_layer(O_Tentacle_Spawner.x, O_Tentacle_Spawner.y, "Projectiles", O_Tentacle);
}
//Lancer un tonneau
if keyboard_check_pressed(vk_numpad2){
	instance_create_layer(-32, random_range(0, 300), "Projectiles", O_Barrel);
}