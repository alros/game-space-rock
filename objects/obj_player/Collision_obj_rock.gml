effect_create_depth(-1000, ef_firework, x + 0, y + 0, 2, $ffffff);

instance_destroy();

with(obj_game) {
	alarm_set(0, 120);
}