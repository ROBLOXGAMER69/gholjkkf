frames += 1;
going_down = false;
if (room == rm_start) {
	draw_set_font(font_dark);
	draw_set_halign(fa_center);
	if (frames <= 360 && (frames % 60 >= 10 && frames % 60 <= 50)) {
		draw_text(room_width / 2, room_height / 2, "ANOTHER YOU");
	} else if (frames >= 360 && (frames % 60 >= 10 && frames % 60 <= 50)) {
		draw_text(room_width / 2, room_height / 2, "ENTER TO START");
	}
} else if (room == rm_street) {
	if (change_alpha == true) {
		draw_set_font(font_light);
		alpha = 0;
		frames = 0;
	}
	draw_set_font(font_dark);
	draw_set_halign(fa_center);	
	draw_text_color(room_width / 2, room_height / 2, "2610 W 10th Street, Grisham", c_white, c_white, c_white, c_white, alpha)
	if (frames <= 360) {	
		if (alpha <= 1) {
			going_down = false;
			alpha += 0.01;	
		}
	} else {
		if (alpha >= 0) {
			going_down = true;
			alpha -= 0.01;	
		}
	}
	
	if (alpha == 0.8 && !going_down && obj_street_background.image_index != 4) {
		obj_street_background.image_speed = 1;
		draw_set_font(font_dark);
	}	
	change_alpha = false;
} else if (room == rm_skin) {
	draw_set_font(font_dark);
	draw_set_halign(fa_center);
	draw_text_color(room_width / 2, 25, "Player Select", c_white, c_white, c_white, c_white, 1)
	if (!created) {
		polo = instance_create_layer(100, 100, "Instances", obj_skin_select)
		polo.sprite_index = spr_player_default_idle;
		polo.image_xscale = 4;
		polo.image_yscale = 4;
		cool = instance_create_layer(200, 100, "Instances", obj_skin_select)
		cool.sprite_index = spr_player_danny_idle;
		cool.image_xscale = 4;
		cool.image_yscale = 4;
		uncool = instance_create_layer(300, 100, "Instances", obj_skin_select)
		uncool.sprite_index = spr_player_skate_idle;
		uncool.image_xscale = 4;
		uncool.image_yscale = 4;
		yeetus = instance_create_layer(400, 100, "Instances", obj_skin_select)
		yeetus.sprite_index = spr_player_ringo_idle;
		yeetus.image_xscale = 4;
		yeetus.image_yscale = 4;
		created = true;
	}
	draw_text_color(room_width / 2, 500, sprite, c_white, c_white, c_white, c_white, 1)
}

