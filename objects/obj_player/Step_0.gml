#region Inputs
right = keyboard_check(vk_right) || keyboard_check(ord("d"));
left = keyboard_check(vk_left) || keyboard_check(ord("a"));
down = keyboard_check(vk_down) || keyboard_check(ord("s"));
up = keyboard_check(vk_up) || keyboard_check(ord("w"));
#endregion

if (right) {
	x += 1;
}

if (left) {
	x -= 1;
}

if (down) {
	y += 1;
}

if (up) {
	y -= 1;
}