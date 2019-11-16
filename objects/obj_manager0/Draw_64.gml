/// @description Insert description here
// You can write your code in this editor
if(alarm[0] >= 0) {
	
	draw_set_color(c_white);
	draw_set_font(fnt_small);
	draw_set_halign(fa_center);
	draw_text(room_width / 2, room_height / 2, "You've found a " + popup_string + "!");	
	
}

// Draw text if timer is active
if(alarm[1] >= 0) {
	
	draw_set_color(c_white);
	draw_set_font(fnt_small);
	draw_set_halign(fa_center);
	draw_text(room_width / 2, room_height / 2, "You're missing a " + popup_string + "!");	
	
}