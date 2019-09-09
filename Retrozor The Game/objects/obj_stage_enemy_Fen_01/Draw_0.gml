if (var_enemy_InVeiw !=0){
	if (var_enemy_mode == "stand"){
		if (var_enemy_plyayerX > x){
			draw_sprite_ext(spr_fen_stage01_enemy01_stand,var_animation_change,x,y,-1,1,0,asset_get_index(var_enemy_color),1){			
			}
		} else {
			draw_sprite_ext(spr_fen_stage01_enemy01_stand,var_animation_change,x,y,1,1,0,asset_get_index(var_enemy_color),1){			
		}
	}
	} else {
		if (var_enemy_mode == "attack") or ((var_enemy_mode == "walk")){
			if (var_enemy_plyayerX > x){
				draw_sprite_ext(spr_fen_stage01_enemy01_walk,var_animation_change,x,y,var_enemy_rot,1,0,asset_get_index(var_enemy_color),1){			
				}
			} else {
				draw_sprite_ext(spr_fen_stage01_enemy01_walk,var_animation_change,x,y,var_enemy_rot,1,0,asset_get_index(var_enemy_color),1){			
			}
		}
	}
	}



		if (var_animation_counter < 30){
				var_animation_counter++
			}

			if (var_animation_counter == 8){
				var_animation_change++
				var_animation_counter = 0
			}
			if (var_animation_change > 3 ){
				var_animation_change = 0
		}
}