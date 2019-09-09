if (var_player_move != "dead"){
	if (var_player_hit_animation > 0){
		var_player_hit_animation--
	}
	if (var_player_hit_animation == 0) and (var_player_move == "hit"){
		var_player_move = "stand"
		var_player_invulnerability_time = 100	
	}

	if (var_player_invulnerability_time > 0){
		var_player_invulnerability_time--
		var_player_flicker_animation++
	}


	if (var_player_flicker_animation >5){
		if (var_player_alpha == 1){
			var_player_flicker_animation = 0
			var_player_alpha = 0
		} else {
			var_player_flicker_animation = 0
			var_player_alpha = 1
		}
	}

	if (var_player_invulnerability_time == 0) {
		var_player_alpha = 1
	}

	if (var_player_hp <= 0){
		var_player_move = "dead"
	}

}