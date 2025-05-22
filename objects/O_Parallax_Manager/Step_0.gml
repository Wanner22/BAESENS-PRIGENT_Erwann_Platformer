var cam_x = camera_get_view_x(view_camera[0]);
layer_x("Parallax_1", cam_x * 0.5);
layer_x("Parallax_2", cam_x * 0.75);