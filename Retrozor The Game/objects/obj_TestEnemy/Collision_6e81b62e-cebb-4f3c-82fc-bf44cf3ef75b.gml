if (obj_player_Fen_falling.var_falling_fen_move != "hit"){
	if (obj_player_Fen_falling.var_falling_fen_invulnerability_time == 0){
		obj_player_Fen_falling.var_falling_fen_move = "hit"
		obj_player_Fen_falling.var_falling_fen_hit_animation = 20
		obj_player_Fen_falling.var_falling_invulnerability_alpha = 20
		obj_player_Fen_falling.var_falling_fen_hp = obj_player_Fen_falling.var_falling_fen_hp - var_enemy_damage
		
	}
}