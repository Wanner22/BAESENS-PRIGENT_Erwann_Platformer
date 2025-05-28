my_tilemap = layer_tilemap_get_id("Environment");
collisions = [O_Collision, my_tilemap, O_Breakable, O_Bar];
enemy_collisions = [O_Collision, my_tilemap, O_Breakable, O_Spike, O_Bar, O_Locked_Door];