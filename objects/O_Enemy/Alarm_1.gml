/// @description Prepare Attack
sprite_index = S_Enemy_Prepare_Attack;
if alarm_get(2) <= 0 and alarm_get(4) <= 0{
	alarm_set(2, 45); //Attack
	alarm_set(4, 20); //Afficher l'indice de parade
}