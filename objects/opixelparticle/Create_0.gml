curveChannel = animcurve_get_channel(acFall, 0);
pos = 0;

xspd = random_range(0.3, 0.6) * choose(-1, 1) * maxSpeed;
yspd = random_range(0.3, 0.6) * choose(-1, 1) * maxSpeed;

image_xscale = random_range(0.3, 1.4);
image_yscale = image_xscale;