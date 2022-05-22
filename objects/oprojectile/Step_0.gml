var _enemy = instance_place(x, y, oEnemy);
if (_enemy != noone) {
	instance_destroy();
	_enemy.Hurt();
}