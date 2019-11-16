 /// @description Insert description here
// You can write your code in this editor
var next_x;
var next_y;
var map_id = layer_tilemap_get_id("ts_collisions")

if(keyboard_check(vk_left) || keyboard_check(ord("A"))){
	//Change sprite index to left facing
	sprite_index = spr_player_default_left;
	next_x = x - 3
	var data = tilemap_get_at_pixel(map_id,next_x,y)
	//show_debug_message(data)
	if(data == 2){
		return
	}else{
		//hspeed = - 3
		//vspeed = 0
		x -= 3
	}
}
///////////////////////////////////////
///////////////////////////////////////

if(keyboard_check(vk_right) || keyboard_check(ord("D"))){
	//change sprite index to right facing
	sprite_index = spr_player_default_right;
	next_x = x + 3
	var data = tilemap_get_at_pixel(map_id,next_x,y)
	if(data == 2){
		return
	}else{
		//hspeed = + 3
		//vspeed = 0
		x += 3
	}
}
///////////////////////////////////////
///////////////////////////////////////

if(keyboard_check(vk_up) || keyboard_check(ord("W"))){
	//change sprite index to up facing
	sprite_index = spr_player_default_up;
	next_y = y - 3
	var data = tilemap_get_at_pixel(map_id,x,next_y)
	if(data == 2){
		return
	}else{
		//vspeed = - 3
		//hspeed = 0
		y -= 3
	}
}
//////////////////////////////////////
//////////////////////////////////////


if(keyboard_check(vk_down) || keyboard_check(ord("S"))){
	//change sprite index to down facing
	sprite_index = spr_player_default_down;
	next_y = y + 3
	var data = tilemap_get_at_pixel(map_id,x,next_y)
	if(data == 2){
		return
	}else{
		//vspeed = + 3
		//hspeed = 0
		y += 3
	}
}


//if(keyboard_check(ord("A"))){
	//sprite_index = spr_test
//

