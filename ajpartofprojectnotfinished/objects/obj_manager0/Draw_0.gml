/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_large)
draw_text(433,98,"Click to Interact")
///////////////////
for(var i = 0; i < ds_list_size(inv); i++) {
	
	draw_set_color(c_white);
	draw_set_font(fnt_small);
	draw_text(50, 5 + (24 * i), inv[| i]);
	
}
