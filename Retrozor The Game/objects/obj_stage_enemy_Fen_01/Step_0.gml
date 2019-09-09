var_enemy_plyayerX = obj_player.x
var_enemy_plyayerY = obj_player.y
script_execute(scr_gravity)
script_execute(scr_enemy_dead)

if (var_enemy_InVeiw != 0){
	if (var_enemy_mode == "stand"){
		hspeed = 0
		vspeed = 0
	} else {
		if (var_enemy_mode == "attack"){
			if(var_enemy_plyayerX < x){
				var_enemy_rot = 1
				hspeed = -8
				var_enemy_mode = "walk"
			} else {
				hspeed = 8
				var_enemy_rot = -1
				var_enemy_mode = "walk"
			}
		}
	}
	if (var_enemy_mode != "walk"){
		if (place_meeting(x + 80,y-10,obj_player)) or (place_meeting(x + 260 ,y-10,obj_player)) or (place_meeting(x - 80,y-10,obj_player)) or (place_meeting(x - 260 ,y-10,obj_player)) {
			var_enemy_mode = "attack"
		}
	}

	if (var_enemy_mode == "walk"){
		if (!place_free(x+5,y-5)) or (!place_free(x-5,y-5)){
			if (hspeed > 0){
				hspeed = -8
				var_enemy_rot = 1
			} else {
				hspeed = 8
				var_enemy_rot = -1
			}
		}
	}

	var_enemy_color = "c_white"
}