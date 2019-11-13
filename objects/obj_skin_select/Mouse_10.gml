globalvar sprite;

if (sprite_index == spr_player_danny_idle) {
	sprite= "Danny Devito";	
} else if (sprite_index == spr_player_skate_idle) {
	sprite = "Skater dude";	
} else if (sprite_index == spr_player_ringo_idle) {
	sprite = "Ringo Starr";	
} else if (sprite_index == spr_player_default_idle) {
	sprite = "Suited man";	
} else {
	show_debug_message(sprite_index);	
}


