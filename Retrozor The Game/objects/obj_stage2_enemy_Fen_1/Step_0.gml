var_enemy_plyayerX = obj_player_Fen_falling.x
var_enemy_plyayerY = obj_player_Fen_falling.y
script_execute(scr_enemy_dead)

if (var_enemy_plyayerX < x){
	var_enemy_rot = -1
} else {
	var_enemy_rot = 1
}



var_enemy_color = "c_white"

if (var_enemy_TimeToAttack > 0){
	var_enemy_TimeToAttack--
	var_enemy_canAttack = 0
} else {
	if (var_enemy_canAttack == 0){

		instance_create_depth(x,y,0,obj_enemy_projectile_02)
		var_enemy_TimeToAttack = 130
		var_enemy_canAttack = 1
		var_enemy_Stop = 30
	}
}

if (var_enemy_canAttack != 1) and (var_enemy_Stop == 0){
	if (var_enemy_rot == 1){
		hspeed = 2
	} else {
		hspeed = -2
	}
	
	if (var_enemy_plyayerY > y){
		vspeed = 2
	} else {
		vspeed = -2
	}
} else {
	if (var_enemy_Stop > 0){
		var_enemy_Stop--
		hspeed = 0
		vspeed = 0
	}
}