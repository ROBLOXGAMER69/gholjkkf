jumping = true;
sprite_index = spr_parkourist_jump;
if (yy == 0) {
	y -= 50;
} else if (yy == 2) {
	y -= 30;
} else if (yy == 3) {
	y -= 7.5;
} else if (yy == 4) {
	y -=2.5;
} else if (yy == 5) {
	y += 2.5;
} else if (yy == 6) {
	y += 7.5;
} else if (yy == 7) {
	y += 30;
} else if (yy == 9) {
	y += 50;
}

if (yy != 9) {
	alarm[0] = 2;
	yy += 1;
} else {
	jumping = false;
	sprite_index = spr_parkourist_right;
}

