if (var_enemy_InVeiw == 1){
	if (var_enemy_mode == "stand"){
		draw_sprite_ext(spr_fen_stage01_enemy03_walk,all,x,y,var_enemy_rot,1,0,asset_get_index(var_enemy_color),1)
		
		
	} else {
		if (var_enemy_mode == "attack"){
			draw_sprite_ext(spr_fen_stage01_enemy03_attack,all,x,y,var_enemy_rot,1,0,asset_get_index(var_enemy_color),1)
			
			
		}
	}
}
image_speed = 1
/*
if (var_animation_counter < 30){
			var_animation_counter++
		}

		if (var_animation_counter == 6){
			var_animation_change++
			var_animation_counter = 0
		}
		if (var_animation_change > 2 ){
					var_animation_change = 0
		}
		
		*/