if (var_player_Fleb_top_mode == "off") {
	if (var_player_move == "stand"){
		draw_sprite_ext(spr_player_Fleb_stand_attack_off,var_player_animation_change,x,y,var_player_rotation,1,0,var_player_color,var_player_alpha)
	}
	if (var_player_move == "jump"){
		draw_sprite_ext(spr_player_Fleb_jump_attack_off,var_player_animation_change,x,y,var_player_rotation,1,0,var_player_color,var_player_alpha)
	}
	if (var_player_move == "walk"){
		draw_sprite_ext(spr_player_Fleb_walk_attack_off,var_player_animation_change,x,y,var_player_rotation,1,0,var_player_color,var_player_alpha)
	}	
} else {
	if (var_player_move == "stand"){
		draw_sprite_ext(spr_player_Fleb_stand_attack_on,var_player_animation_change,x,y,var_player_rotation,1,0,var_player_color,var_player_alpha)
	}
	if (var_player_move == "jump"){
		draw_sprite_ext(spr_player_Fleb_jump_attack_on,var_player_animation_change,x,y,var_player_rotation,1,0,var_player_color,var_player_alpha)
	}
	if (var_player_move == "walk"){
		draw_sprite_ext(spr_player_Fleb_walk_attack_on,var_player_animation_change,x,y,var_player_rotation,1,0,var_player_color,var_player_alpha)
	}	
	
	if (var_player_Fleb_top_mode == "on"){
		if (var_player_animation_change == 3){
			instance_destroy(obj_projecttile_Fleb)
			var_player_Fleb_top_mode = "off"
		}
	}
}