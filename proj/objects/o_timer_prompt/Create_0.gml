/// @description Insert description here
// You can write your code in this editor
if (global.timer ==0){
instance_create_layer(view_xview + view_wview * 0.5,view_yview + view_hview * 0.5,"Timer",o_day_timer);
}
global.timer++;
show_debug_message(global.timer);