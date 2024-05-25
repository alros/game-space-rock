points = 0;
draw_scores = []

setup_music = function(){
	audio_play_sound(MP3_outrun_neon_dreams_80s_199668, 1, true)
}

reset_room = function(){
	points = 0;
	draw_scores = []
	instance_create_layer(floor(room_width/2 - sprite_get_height(spr_go_brrrr)/2),
						  floor(room_height/2 - sprite_get_width(spr_go_brrrr)/2), 
						  layer, obj_go_brrrr)
}

setup_music()
reset_room()
