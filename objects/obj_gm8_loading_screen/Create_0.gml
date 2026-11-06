progress = 0;
window_width = window_get_width();
window_height = window_get_height();
is_fullscreen = window_get_fullscreen();

window_set_fullscreen(false);
var first = room_first;
var rm = room_next(room_first);
if (room_first != room) {
    rm = room_first;
}
next_room = rm;
if (rm) {
    var info = room_get_info(rm);
    
    //show_message(info);
    window_width = info.width;
    window_height = info.height;
    
    
    
}
window_set_size(sprite_width,sprite_height);
window_x = window_get_x();
window_y = window_get_y();
call_later(1,time_source_units_frames,function(){
    window_center();
},false)
camera = camera_create_view(0,0,sprite_width,sprite_height);
view_camera[0] = camera;
view_enabled = true;
view_visible[0] = true;
surface_resize(application_surface,sprite_width,sprite_height);
has_border = window_get_showborder();
window_set_showborder(false);
bar_length = sprite_width - 24;
