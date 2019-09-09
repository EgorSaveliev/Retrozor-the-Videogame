if (var_player_Frank_hand_mode == "off") {
	if (var_player_move == "stand"){
		draw_sprite_ext(spr_player_Frank_stand_hand_off,var_player_animation_change,x,y,var_player_rotation,1,0,var_player_color,var_player_alpha)
	}
	if (var_player_move == "jump"){
		draw_sprite_ext(spr_player_Frank_jump_hand_off,var_player_animation_change,x,y,var_player_rotation,1,0,var_player_color,var_player_alpha)
	}
	if (var_player_move == "walk"){
		draw_sprite_ext(spr_player_Frank_walk_hand_off,var_player_animation_change,x,y,var_player_rotation,1,0,var_player_color,var_player_alpha)
	}	
} else {
	if (var_player_move == "stand"){
		draw_sprite_ext(spr_player_Frank_stand_hand_on,var_player_animation_change,x,y,var_player_rotation,1,0,var_player_color,var_player_alpha)
	}
	if (var_player_move == "jump"){
		draw_sprite_ext(spr_player_Frank_jump_hand_on,var_player_animation_change,x,y,var_player_rotation,1,0,var_player_color,var_player_alpha)
	}
	if (var_player_move == "walk"){
		draw_sprite_ext(spr_player_Frank_walk_hand_on,var_player_animation_change,x,y,var_player_rotation,1,0,var_player_color,var_player_alpha)
	}	
	
	if (var_player_Frank_hand_mode == "on"){
		if (var_player_animation_change == 2){
			var_player_Frank_hand_mode = "off"
		}
	}
}