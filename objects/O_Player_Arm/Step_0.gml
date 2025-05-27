if O_Player.shoot_dir > 90 and O_Player.shoot_dir < 270 image_yscale = -1;
else image_yscale = 1;

image_angle = O_Player.shoot_dir;
x = O_Player.x;
y = O_Player.y - 15;