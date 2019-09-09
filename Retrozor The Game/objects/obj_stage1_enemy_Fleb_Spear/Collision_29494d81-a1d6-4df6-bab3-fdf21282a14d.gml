if (var_player_move != "hit") and (var_player_move != "dead") and (var_enemy_canAttack == 1){
	if (obj_player.var_player_invulnerability_time == 0){
		var_player_move = "hit"
		obj_player.var_player_hit_animation = 20
		obj_player.var_player_hp = obj_player.var_player_hp - var_enemy_damage
		
	}
}