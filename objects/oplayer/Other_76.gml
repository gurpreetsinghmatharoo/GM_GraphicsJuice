if (event_data[? "message"] == "player_shoot") {
	instance_create_depth(x + 8, y, depth, oProjectile, {
		speed: 6,
		direction: point_direction(x, y, oEnemy.x, oEnemy.y-13)
	});
	
	kbX = -1 * kbForce;
	kbY = 1 * kbForce;
	
	shakeMag = 5;
	
	instance_create_depth(x + 8, y, depth - 100, oPixelParticle);
}