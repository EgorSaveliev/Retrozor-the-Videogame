if (var_falling_fen_move != "dead") and (var_falling_fen_hp > 0){
	var_falling_fen_sprite = "spr_player_" + var_player_type + "_falling_" + var_falling_fen_move
	image_speed = 1

	draw_sprite_ext(asset_get_index(var_falling_fen_sprite),all,x,y,var_falling_fen_dir,1,0,c_white,var_falling_fen_alpha)



	if (var_falling_fen_move == "hit"){
		if (!audio_is_playing(snd_player_hit)){
			audio_play_sound(snd_player_hit,1,0)
		}
		gamepad_set_vibration(0,1,1)
		gamepad_set_vibration(1,1,1)
		gamepad_set_vibration(2,1,1)
		gamepad_set_vibration(3,1,1)
	} else {
		gamepad_set_vibration(0,0,0)
		gamepad_set_vibration(1,0,0)
		gamepad_set_vibration(2,0,0)
		gamepad_set_vibration(3,0,0)
	}

} else {
		gamepad_set_vibration(0,0,0)
		gamepad_set_vibration(1,0,0)
		gamepad_set_vibration(2,0,0)
		gamepad_set_vibration(3,0,0)
}