if (event_data[? "message"] == "player_shoot") {
	instance_create_depth(x + 8, y, depth, oProjectile, {
		speed: 6,
		direction: point_direction(x, y, oEnemy.x, oEnemy.y)
	});
}