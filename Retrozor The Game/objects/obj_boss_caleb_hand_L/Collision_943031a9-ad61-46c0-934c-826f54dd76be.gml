if (obj_boss_Caleb.var_boss_mode = "attack3"){
	if (var_player_move != "hit")and (var_player_move != "dead"){
	if (obj_player.var_player_invulnerability_time == 0){
		var_player_move = "hit"
		obj_player.var_player_hit_animation = 20
		obj_player.var_player_hp = obj_player.var_player_hp - 1
		
	}
}
}

obj_boss_Caleb.var_boss_mode = "stand"
obj_boss_Caleb.var_boss_time_to_attack = 250
obj_boss_Caleb.var_boss_attack_random = 0

