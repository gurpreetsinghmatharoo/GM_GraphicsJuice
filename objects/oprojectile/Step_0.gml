// Colliding with enemy
var _enemy = instance_place(x, y, oEnemy);
if (_enemy != noone) {
	instance_destroy();
	_enemy.Hurt();
	
	// Create 10 particles
	repeat (10) {
		instance_create_depth(x, y - 5, _enemy.depth-100, oPixelParticle, {
			height: 8,
			maxSpeed: 0.7,
			animSpd: 0.03
		});
	}
}