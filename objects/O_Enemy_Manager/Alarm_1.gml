/// @description Prepare Attack
sprite_index = S_Enemy_Prepare_Attack;
if alarm_get(2) <= 0{
	alarm_set(2, 30);
}