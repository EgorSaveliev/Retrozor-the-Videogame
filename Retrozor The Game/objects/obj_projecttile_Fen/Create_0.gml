if (instance_exists(obj_player)){
	if  (obj_player.var_player_rotation == 1){
		hspeed = 15
	} else {
		hspeed = -15
	}
} else {
	if (instance_exists(obj_player_Fen_falling)){
		if  (obj_player_Fen_falling.var_falling_fen_dir == 1){
			hspeed = 15
		} else {
			hspeed = -15
		}
	}
}


audio_play_sound(snd_player_FenAttack,1,0)