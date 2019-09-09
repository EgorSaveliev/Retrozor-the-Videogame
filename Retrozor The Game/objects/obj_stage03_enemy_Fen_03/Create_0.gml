var_enemy_damage = 15
var_enemy_maxhp = 50
var_enemy_hp = var_enemy_maxhp
var_enemy_mode = "walk"
var_enemy_plyayerX = 0
var_enemy_plyayerY = 0
var_enemy_color = c_white
var_enemy_InVeiw = 0
var_enemy_speed = 5
var_enemy_sprite = "spr_fen_stage03_enemy03_" + var_enemy_mode
image_speed = 1
var_enemy_playerX = obj_player.x
var_enemy_playerY = obj_player.y
if (var_enemy_playerX < x){
	var_enemy_rot = -1
} else {
	var_enemy_rot = 1
}
var_enemy_Hjump = 3
var_enemy_canAttack = 1
