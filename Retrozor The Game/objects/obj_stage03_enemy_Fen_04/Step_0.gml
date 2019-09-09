if (distance_to_object(obj_player) < 230){
	var_enemy_mode = "attack"
}
if (var_enemy_mode == "attack"){
	if (var_enemy_canAttack == 1){
		var_enemy_canAttack = 0
		instance_create_depth(x,y-50,0,obj_stage03_enemy_Fen_03)
		audio_play_sound(snd_egg_exploude,1,0)
	}
}