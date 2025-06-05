/// @description Diminuer les PV ennemis
enemy_hp--;
audio_play_sound(So_Hit, 0, false);
Sc_Screen_Shake();
instance_create_layer(x, y, "Effects", O_Smoke);