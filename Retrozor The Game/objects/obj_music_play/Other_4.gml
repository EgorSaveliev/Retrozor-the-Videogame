var_music_levelName ="snd_" + room_get_name(room)

if (!audio_is_playing(asset_get_index(var_music_levelName))) and (audio_exists(asset_get_index(var_music_levelName))){
	if (var_music_levelName != "snd_Main_Menu"){
		audio_play_sound(asset_get_index(var_music_levelName),0,1)
	} else {
		audio_play_sound(asset_get_index(var_music_levelName),0,0)
	}
}