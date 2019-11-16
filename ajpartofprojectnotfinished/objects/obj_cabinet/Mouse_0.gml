/// @description Insert description here
// You can write your code in this editor
sprite_index = spr_cabinetOpen
//////////////////
//////////////////
if(needs_item_to_interact == true){
	if(ds_list_find_index(inv, needed_item_name) > -1){
		if( has_item_to_give == true){
			ds_list_add(inv,item_to_give_name)
			ds_list_find_index(inv,needed_item_name)
			ds_list_delete(inv,index)
			obj_manager0.alarm[0] = alarm0_max;
			popup_string = item_to_give_name;
			has_item_to_give = false;
			image_speed = 1 
			if(has_item_to_give == true){
				obj_manager0.alarm[1] = alarm0_max;
				popup_string = needed_item_name;
			}
		}
	}
}
if(has_item_to_give == true){
	if(needs_item_to_interact == false){
		if(has_item_to_give == true){
			has_item_to_give = false
			image_speed = 1;
		}
	}
}else{
	image_speed = 1
}