var_enemy_damage = 15
var_enemy_maxhp = 5
var_enemy_hp = var_enemy_maxhp
var_enemy_mode = "attack"
var_enemy_plyayerX = 0
var_enemy_plyayerY = 0

var_enemy_color = "c_white"
var_enemy_InVeiw = 1
var_enemy_SpriteName = "spr_fleb_stage01_enemy03_" + var_enemy_mode

var_animation_counter = 0
var_animation_max = sprite_get_number(asset_get_index(var_enemy_SpriteName))
var_animation_change = 5

if (x >= obj_player.x){
	var_enemy_rot = -1
} else {
	var_enemy_rot = 1
}