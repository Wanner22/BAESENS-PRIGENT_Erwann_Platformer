randomize();
throw_time = random_range(150, 240);
stun_time = 210;
obj = 0;
tenta = 0;
is_stuned = false;
boss_hp = 40;
is_invincible = false;
killed_tentacle = false;
alarm_set(0, throw_time); //Créer le projectile