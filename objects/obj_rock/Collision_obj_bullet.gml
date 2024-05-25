with(other) instance_destroy();

effect_create_depth(-1000, ef_firework, x + 0, y + 0, 2, $ffffff);

obj_game.points += 1;

if(sprite_index == spr_rock_big){
	//explode big to small
	sprite_index = spr_rock_small;
	image_index = 0;
	instance_copy(true);
	audio_play_sound(MP3_Bomb_Explosion_Large_1, 10, false);
}else{
	if(instance_number(obj_rock) < 10){
		//explode small and respawn as big
		sprite_index = spr_rock_big;
		image_index = 0;	
		x = -100;
	}else{
		//just eliminate
		instance_destroy();
	}
	audio_play_sound(MP3_Bomb_Explosion_Large_2, 10, false);
}
