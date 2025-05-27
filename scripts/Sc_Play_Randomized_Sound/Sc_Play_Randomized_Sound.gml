function Sc_Play_Randomized_Sound(type, gain){
	var whoosh_index = irandom_range(0, 2);
	var my_whoosh = -1;
	randomize();
	if type == whoosh{
		if whoosh_index == 0 my_whoosh = So_Whoosh1
		else if whoosh_index == 1 my_whoosh = So_Whoosh2
		else if whoosh_index == 2 my_whoosh = So_Whoosh3
		audio_play_sound(my_whoosh, 0, false, gain);
	}
}