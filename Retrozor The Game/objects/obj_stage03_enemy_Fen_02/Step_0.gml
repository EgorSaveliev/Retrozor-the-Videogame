var_enemy_playerX = obj_player.x
var_enemy_playerY = obj_player.y
script_execute(scr_gravity)
script_execute(scr_enemy_dead)
var_enemy_color = "c_white"

if (var_enemy_InVeiw != 0){
	if (distance_to_object(obj_player)<320){
		var_enemy_speed = 7
	} else {
		var_enemy_speed = 3
	}
	
	if (var_enemy_mode == "right"){
		x = x + var_enemy_speed
		var_enemy_rot = 1
		if (place_meeting(x+50,y-20,obj_TestBlock)){
			var_enemy_mode = "left"
		}
	}
	if (var_enemy_mode == "left"){
		x = x - var_enemy_speed
		var_enemy_rot = -1
		if (place_meeting(x-50,y-20,obj_TestBlock)){
			var_enemy_mode = "right"
		}
	}
}		
