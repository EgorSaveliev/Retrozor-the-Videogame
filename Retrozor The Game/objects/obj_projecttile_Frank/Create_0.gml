script_execute(scr_gravity)
if (instance_exists(obj_player)){
	vspeed = -5
	if (var_player_move == "walk"){
		if  (obj_player.var_player_rotation == 1){
			hspeed = + 14
		} else {
			hspeed = - 14
		}
	} else {
		if  (var_player_move == "jump"){
			if  (obj_player.var_player_rotation == 1){
				hspeed = + 12
			} else {
				hspeed = - 12
			}
		} else{
			if  (obj_player.var_player_rotation == 1){
				hspeed = + 10
			} else {
				hspeed = - 10
			}
		}
	}
}

audio_play_sound(snd_player_FrankAttack,1,0)