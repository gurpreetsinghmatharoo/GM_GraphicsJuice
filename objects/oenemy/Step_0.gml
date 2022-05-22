if (flashAlpha > 0) {
	flashAlpha -= 0.1;
}

scaleXSpd = lerp(scaleXSpd, scaleX - image_xscale, catchupSpeed);
scaleYSpd = lerp(scaleYSpd, scaleY - image_yscale, catchupSpeed);

image_xscale += scaleXSpd * animMultiplier;
image_yscale += scaleYSpd * animMultiplier;