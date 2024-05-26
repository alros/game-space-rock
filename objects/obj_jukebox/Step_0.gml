if(audio_system_is_available()){
	if !audio_is_playing(MP3_outrun_neon_dreams_80s_199668) {
		audio_play_sound(MP3_outrun_neon_dreams_80s_199668, 1, true);
		_is_playing = true;
	}
}