O_Coin_Manager.coin_amount += 1;
audio_play_sound(So_Coin, 0, false);
instance_create_layer(x, y, "Effects", O_White_Spark);
instance_destroy(self);