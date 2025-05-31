/// @description Créer tentacule parables si toujours pas apparu
if not instance_exists(O_Tentacle_Parry){
	instance_create_layer(O_Tentacle_Spawner.x, O_Tentacle_Spawner.y, "Projectiles", O_Tentacle_Parry);
}