if (var_enemy_InVeiw != 0){
	if (var_enemy_mode == "stand"){
		draw_sprite_ext(spr_fen_stage01_enemy02_stand,all,x,y,var_enemy_rot,1,0,asset_get_index(var_enemy_color),1)
		/*
		if (var_animation_counter < 30){
				var_animation_counter++
			}
		if (var_animation_counter == 12){
			var_animation_change++
			var_animation_counter = 0
		}
		if (var_animation_change > 3 ){
			var_animation_change = 0
		}
		*/
	} else {
		draw_sprite_ext(spr_fen_stage01_enemy02_atack,all,x,y,var_enemy_rot,1,0,asset_get_index(var_enemy_color),1)
		/*
		if (var_animation_counter < 30){
			var_animation_counter++
		}
		if (var_animation_counter == 12){
			var_animation_change++
			var_animation_counter = 0
		}
		if (var_animation_change > 6 ){
			var_animation_change = 0
		}*/

	}

}
image_speed = 0.8


	