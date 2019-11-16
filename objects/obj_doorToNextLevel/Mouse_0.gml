/// @description Insert description here
// You can write your code in this editor

if(ds_list_find_index(inv,"key") > -1){
	instance_destroy();
	room_goto(rm_unknown)
} else{
	obj_manager0.alarm[1] = alarm0_max;
	popup_string = "Key!";
}