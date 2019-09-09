if (var_enemy_mode == "stand"){
	draw_sprite_ext(spr_fen_stage02_enemy02_stand,all,x,y,var_enemy_rot,1,0,asset_get_index(var_enemy_color ),1)
} else {
	draw_sprite_ext(spr_fen_stage02_enemy02_attack,all,x,y,var_enemy_rot,1,0,asset_get_index(var_enemy_color ),1)
}