var_enemy_randomVspeed = irandom_range(4,8)
var_enemy_randomHspeed = random_range(1,6)
var_enemy_randomRot = irandom_range(0,1)
var_enemy_randomSprite = irandom_range(0,5)
var_enemy_canJump = 1
image_index = var_enemy_randomSprite

if (var_enemy_randomRot > 0) {
	var_enemy_rot = 1
} else {
	var_enemy_rot = -1
}

if (var_enemy_canJump == 1){
	vspeed = -var_enemy_randomVspeed
	var_enemy_canJump--
}

if (var_enemy_rot == 1) {
	hspeed = var_enemy_randomHspeed
} else {
	hspeed = -var_enemy_randomHspeed
}
image_speed = 0