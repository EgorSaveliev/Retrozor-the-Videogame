if (var_enemy_InVeiw !=0){
	var_enemy_SpriteName = "spr_fleb_stage01_enemy02_" + var_enemy_mode
	image_speed = 1
	draw_sprite_ext(asset_get_index(var_enemy_SpriteName),var_animation_counter,x,y,var_enemy_rot,1,0,asset_get_index(var_enemy_color),1)
}
var_animation_max = sprite_get_number(asset_get_index(var_enemy_SpriteName))

if (var_animation_change > 0){
	var_animation_change--
} else {
	if (var_animation_counter != var_animation_max){
		var_animation_counter++
	} else {
		var_animation_counter = 0
	}
	
	if (var_enemy_mode == "attack") or (var_enemy_mode == "transform"){
		var_animation_change = 8	
	}
	if (var_enemy_mode == "walk"){
		var_animation_change = 5	
	}
	
	
}