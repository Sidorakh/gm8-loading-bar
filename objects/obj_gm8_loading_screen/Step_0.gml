progress += 0.5;
if (progress > 100) {
    window_set_size(window_width,window_height);
    window_set_showborder(has_border);
    surface_resize(application_surface,window_width,window_height);
    view_enabled = false;
    view_visible[0] = false;
    view_camera[0] = -1;
    camera_destroy(camera);
    window_set_fullscreen(is_fullscreen);
    window_set_position(window_x,window_y);
    room_goto(next_room);
}