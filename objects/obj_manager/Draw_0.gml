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
	
	if (alpha == 0.8 && !going_down && obj_background.image_index != 4) {
		obj_background.image_speed = 1;
	}	
	change_alpha = false;
}

