x += xspd;
ystart += yspd;
y = ystart - animcurve_channel_evaluate(curveChannel, pos) * height;

pos += animSpd;

if (pos > 0.6) {
	image_alpha = 1 - ((pos - 0.6) / 0.4);
}

if (pos >= 1) {
	instance_destroy();
}