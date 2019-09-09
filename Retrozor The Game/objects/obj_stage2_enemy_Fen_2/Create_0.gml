var_enemy_damage = 15
var_enemy_maxhp = 120
var_enemy_hp = var_enemy_maxhp
var_enemy_mode = "stand"
var_enemy_plyayerX = 0
var_enemy_plyayerY = 0
var_enemy_rot = 1
var_enemy_color = "c_white"
var_enemy_InVeiw = 1

var_animation_counter = 0
var_animation_change = 0

var_enemy_sprite = ""
var_enemy_TimeToAttack = 100
var_enemy_canAttack = 1


var_enemy_plyayerX = obj_player_Fen_falling.x
var_enemy_plyayerY = obj_player_Fen_falling.y
if (var_enemy_plyayerX > x){
	var_enemy_rot = 1
	hspeed = 2
} else {
	var_enemy_rot = -1
	hspeed = -2
}