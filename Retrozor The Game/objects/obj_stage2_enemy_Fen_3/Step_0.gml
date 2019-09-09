var_enemy_plyayerX = obj_player_Fen_falling.x
var_enemy_plyayerY = obj_player_Fen_falling.y
script_execute(scr_enemy_dead)
var_enemy_color = "c_white"



if (var_enemy_TimeAttack == 0) and (var_enemy_mode == "stand"){
	
	if (var_enemy_plyayerX > x){
		hspeed = 2
		var_enemy_rot = 1
	} else {
		hspeed = -2
		var_enemy_rot = -1
	}
	
	if (var_enemy_plyayerY > y){
		vspeed = 2
	} else {
		vspeed = -2
	}

	if (distance_to_object(obj_player_Fen_falling) < 300) and (var_enemy_TimeToAttack == 0){
		var_enemy_mode = "attack"
		var_enemy_TimeAttack = 40
	}
} else {
	var_enemy_TimeAttack--
	if (var_enemy_TimeAttack == 1){
		var_enemy_mode = "stand"
		var_enemy_TimeToAttack = 40
	}
}

if (var_enemy_TimeToAttack > 0){
	var_enemy_TimeToAttack--
}

if (var_enemy_mode == "attack") and (var_enemy_TimeAttack == 40) and (var_enemy_TimeToAttack = 0){
	move_towards_point(var_enemy_plyayerX,var_enemy_plyayerY,12)
}