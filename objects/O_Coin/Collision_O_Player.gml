O_Coin_Manager.coin_amount += 1;
audio_play_sound(So_Coin, 0, false);
effect_create_above(ef_spark, x, y, 1, c_white);
instance_destroy(self);