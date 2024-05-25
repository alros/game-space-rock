if (keyboard_check(vk_up)){
	motion_add(image_angle, 0.1);
	sprite_index = spr_player_acc;
	image_index = 0;
}

if (keyboard_check_released(vk_up)){
	sprite_index = spr_player;
	image_index = 0;
}

if (keyboard_check(vk_right)){
	image_angle += 4;
}


if (keyboard_check(vk_left)){
	image_angle += -4;
}

if (keyboard_check_pressed(vk_space)){
	instance_create_layer(x + 0, y + 0, "Instances", obj_bullet);
	if(random(1)>0.5){
		audio_play_sound(MP3_Lightning_Bolt_1, 10, false);
	}else{
		audio_play_sound(MP3_Lightning_Bolt_2, 10, false);
	}
}

move_wrap(1, 1, 0);