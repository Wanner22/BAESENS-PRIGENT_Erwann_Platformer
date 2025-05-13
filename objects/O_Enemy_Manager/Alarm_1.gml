/// @description Prepare Attack
sprite_index = S_Enemy_Prepare_Attack;
if alarm_get(2) <= 0 and alarm_get(4) <= 0{
	alarm_set(2, 30); //Attack
	alarm_set(4, 15); //Afficher l'indice de parade
}