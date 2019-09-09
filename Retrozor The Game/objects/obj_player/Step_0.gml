var_player_X = x
var_player_Y = y
if (var_player_move != "dead"){ 
	var_player_color = c_white
	hspeed = 0
		
	if (var_player_LevelName == "Fen_Act_Stage03") or (var_player_LevelName == "Fen_Act_Stage03_boss") {
		script_execute(scr_gravity_moon)
	} else {
		script_execute(scr_gravity)
	}
	script_execute(scr_player_moves)
	script_execute(scr_player_hit)
	
	if (var_player_move == "hit"){
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
	if (var_player_hp > var_player_MAXhp){
		var_player_hp = var_player_MAXhp
	}
} 