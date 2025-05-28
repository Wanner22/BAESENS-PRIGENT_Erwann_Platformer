function Sc_Play_Randomized_Sound(type, gain){
	var whoosh_index = irandom_range(0, 2);
	var my_whoosh = -1;
	var step_index = irandom_range(0, 3);
	var my_step = -1;
	randomize();
	if type == "whoosh" {
		if whoosh_index == 0 my_whoosh = So_Whoosh1;
		else if whoosh_index == 1 my_whoosh = So_Whoosh2;
		else if whoosh_index == 2 my_whoosh = So_Whoosh3;
		if not audio_is_playing(my_whoosh) audio_play_sound(my_whoosh, 0, false, gain);
	}
	else if type == "step" {
		if step_index == 0 my_step = So_Step1;
		else if step_index == 1 my_step = So_Step2;
		else if step_index == 2 my_step = So_Step3;
		else if step_index == 3 my_step = So_Step4;
		if not audio_is_playing(my_step) audio_play_sound(my_step, 0, false, gain);
	}
}