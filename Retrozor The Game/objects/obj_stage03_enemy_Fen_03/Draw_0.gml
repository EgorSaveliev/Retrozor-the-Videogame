var_enemy_sprite = "spr_fen_stage03_enemy03_" + var_enemy_mode
if (var_enemy_InVeiw != 0){
	draw_sprite_ext(asset_get_index(var_enemy_sprite),all,x,y,var_enemy_rot,1,0,asset_get_index(var_enemy_color),1)
}