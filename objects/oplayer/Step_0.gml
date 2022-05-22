// Shooting while idle
switch (sprite_index) {
	case sPlayerIdle:
		if (mouse_check_button_pressed(mb_left)) {
			sprite_index = sPlayerShoot;
			image_index = 0;
		}
	break;
}

// Restart
if (keyboard_check_pressed(ord("R"))) {
	room_restart();
}

// For knockback
if (kbX != 0) {
	kbX -= sign(kbX) * kbDeacc;
	if (abs(kbX) <= kbDeacc) {
		kbX = 0;
	}
	x += kbX;
}
if (kbY != 0) {
	kbY -= sign(kbY) * kbDeacc;
	if (abs(kbY) <= kbDeacc) {
		kbY = 0;
	}
	y += kbY;
}

// For screenshake
if (shakeMag > 0) {
	shakeMag -= 1;
}
fx_set_parameter(screenshake, "g_Magnitude", shakeMag);