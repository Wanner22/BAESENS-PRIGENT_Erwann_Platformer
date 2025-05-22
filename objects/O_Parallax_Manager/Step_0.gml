var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);
layer_x("Parallax_1", cam_x * 0.25);
layer_y("Parallax_1", cam_y * 0.25)
layer_x("Parallax_2", cam_x * 0.5);
layer_y("Parallax_2", cam_y * 0.5);
layer_x("Parallax_3", cam_x * 0.75);
layer_y("Parallax_3", cam_y * 0.75);