flashAlpha = 0;
uni = shader_get_uniform(shWhiteFlash, "flashAlpha");

scaleX = 1;
scaleY = 1;
scaleXSpd = 0;
scaleYSpd = 0;

catchupSpeed = 0.2;
animMultiplier = 1;

Hurt = function () {
	flashAlpha = 1;
	image_xscale = 0.85;
	image_yscale = 1.1;
	kbX = kbForce;
	kbY = kbForce * -1;
	oPlayer.shakeMag = 2;
}

kbX = 0;
kbY = 0;
kbDeacc = 0.1;
kbForce = 1;