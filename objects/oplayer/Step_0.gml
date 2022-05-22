switch (sprite_index) {
	case sPlayerIdle:
		if (mouse_check_button_pressed(mb_left)) {
			sprite_index = sPlayerShoot;
			image_index = 0;
		}
	break;
}