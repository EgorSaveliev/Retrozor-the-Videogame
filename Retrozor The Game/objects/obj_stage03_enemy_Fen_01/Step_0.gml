var_enemy_playerX = obj_player.x
var_enemy_playerY = obj_player.y
script_execute(scr_gravity)
script_execute(scr_enemy_dead)
var_enemy_color = "c_white"


if (var_enemy_playerX > x){
		var_enemy_rot = 1
	} else {
		var_enemy_rot = -1
	}

if (var_enemy_InVeiw != 0){
	var_enemy_TimeAttack--
	
	if (var_enemy_canAttack == 1){
		var_enemy_mode = "attack"
		if (var_enemy_mode == "attack"){
		
		if (var_enemy_TimeAttack < 0) and (var_enemy_TimeToAttack <= 0){
			var_enemy_TimeToAttack = 200
			var_enemy_mode = "stand"
			var_enemy_canAttack = 0
		}
	}
	}
		
	
	
	if (distance_to_object(obj_player) < 750){

		if (var_enemy_mode == "stand"){
			if (var_enemy_TimeToAttack > 0) {
			var_enemy_TimeToAttack--
				if (var_enemy_TimeToAttack <= 0){
					var_enemy_canAttack = 1
					var_enemy_TimeAttack = 100
					instance_create_depth(x,y-60,0,obj_enemy_projectile_04)
				}
			}
		}
	}
}