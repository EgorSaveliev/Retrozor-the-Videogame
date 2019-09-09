if (var_player_move != "dead"){
	var_player_sprite = "spr_player_" + var_player_type + "_" + var_player_move

	draw_sprite_ext(asset_get_index(var_player_sprite),var_player_animation_change,x,y,var_player_rotation,1,0,asset_get_index(var_player_color),var_player_alpha)

	if (var_player_animation_counter < 30){
		var_player_animation_counter++
	}

	if (var_player_animation_counter == 8){
		var_player_animation_change++
		var_player_animation_counter = 0
	}
	if (var_player_animation_change > 3 ){
		var_player_animation_change = 0
	}
	
	if (var_player_type == "Frank"){
		script_execute(scr_player_Frank_hand)
	}
	if (var_player_type == "Fleb"){
		script_execute(scr_player_Fleb_top)
	}
} else {
	script_execute(scr_player_dead)
}

script_execute(scr_player_LevelStartTexet)
