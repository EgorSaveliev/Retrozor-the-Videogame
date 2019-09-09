var_enemy_damage = 15
var_enemy_speed = 1
if (var_enemy_speed == 1){
	vspeed = -4.5
	var_enemy_speed--
	
}

if (x > obj_player.x){
	var_enemy_rot = -1
	hspeed = -5
} else {
	var_enemy_rot = 1
	hspeed = 5
}
image_speed = 0.6
image_index = 1
var_enemy_canAttack = 1