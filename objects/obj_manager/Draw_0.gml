frames += 1;

if (room == rm_start) {
	draw_set_font(font_dark);
	draw_set_halign(fa_center);
	if (frames <= 360 && (frames % 60 >= 10 && frames % 60 <= 50)) {
		draw_text(room_width / 2, room_height / 2, "ANOTHER YOU");
	} else if (frames >= 360 && (frames % 60 >= 10 && frames % 60 <= 50)) {
		draw_text(room_width / 2, room_height / 2, "ENTER TO START");
	}
}
