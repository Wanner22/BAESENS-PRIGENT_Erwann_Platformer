randomize();
throw_time = random_range(120, 180);
stun_time = 210;
obj = 0;
tenta = 0;
is_stuned = false;
boss_hp = 40;
is_invincible = false;
alarm_set(0, throw_time); //Créer le projectile
alarm_set(3, 600); //Créer tentacule parables si toujours pas apparu