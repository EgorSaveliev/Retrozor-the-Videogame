draw_sprite_ext(spr_fleb_stage01_enemy02_spear,all,x,y,var_enemy_rot,1,0,c_white,1)
if (var_enemy_rot == 1){
	mask_index = spr_fleb_stage01_enemy02_spear
} else {
	mask_index = spr_fleb_stage01_enemy02_spear_invert
}