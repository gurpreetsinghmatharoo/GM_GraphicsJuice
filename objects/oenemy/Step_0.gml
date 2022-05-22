if (flashAlpha > 0) {
	flashAlpha -= 0.1;
}

scaleXSpd = lerp(scaleXSpd, scaleX - image_xscale, catchupSpeed);
scaleYSpd = lerp(scaleYSpd, scaleY - image_yscale, catchupSpeed);

image_xscale += scaleXSpd * animMultiplier;
image_yscale += scaleYSpd * animMultiplier;

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