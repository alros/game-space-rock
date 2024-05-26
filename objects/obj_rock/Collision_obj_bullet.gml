destroy_bullet = function() {
	with(other) instance_destroy();
}

update_points = function() {
	if(instance_number(obj_player)>0){//prevent NPE
		var _points = round(obj_player.speed*100);
		obj_game.points += _points;
		
		var _scores = {
			x: x,
			y: y,
			points: _points,
			counter: 0
		}
		array_insert(obj_game.draw_scores,0,_scores)
	}
}

respawn_rock = function() {
	if(sprite_index == spr_rock_big){
		//explode: big to small
		sprite_index = spr_rock_small;
		image_index = 0;
		speed = 4
		instance_copy(true);
		audio_play_sound(MP3_Bomb_Explosion_Large_1, 10, false);
	}else{
		if(instance_number(obj_rock) < 10){
			//explode: small and respawn as big
			sprite_index = spr_rock_big;
			image_index = 0;	
			speed = 2
			var _random = random(4);
			if(_random<1){
				x = -100;
			}else if(_random<2){
				x = room_width + 100
			}else if(_random<3){
				y = -100;
			}else{
				y = room_height + 100
			}
		}else{
			//just eliminate
			instance_destroy();
		}
	}
}


effect_create_depth(-1000, ef_firework, x + 0, y + 0, 2, $ffffff);
audio_play_sound(MP3_Bomb_Explosion_Large_2, 10, false);
update_points()
respawn_rock()
