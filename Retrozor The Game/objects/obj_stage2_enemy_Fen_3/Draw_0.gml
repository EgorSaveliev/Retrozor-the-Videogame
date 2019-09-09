if (var_enemy_mode == "stand"){
	draw_sprite_ext(spr_fen_stage02_enemy03_stand,all,x,y,var_enemy_rot,1,0,asset_get_index(var_enemy_color),1)

} else {
	draw_sprite_ext(spr_fen_stage02_enemy03_attack,var_animation_change,x,y,var_enemy_rot,1,0,asset_get_index(var_enemy_color),1)
	
	if (var_animation_counter > 0){
		var_animation_counter--
	} else {
		var_animation_counter = 2
		var_animation_change++
		if (var_animation_change == 22 ){
			var_animation_change = 0
		}
	}
}
image_speed= 5