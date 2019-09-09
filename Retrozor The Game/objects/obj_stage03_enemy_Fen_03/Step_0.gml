var_enemy_playerX = obj_player.x
var_enemy_playerY = obj_player.y
script_execute(scr_gravity)
script_execute(scr_enemy_dead)
var_enemy_color = "c_white"

if (var_enemy_InVeiw != 0){
	if (var_enemy_rot == 1){
		x = x + var_enemy_speed
		if (place_meeting(x+20,y-20,obj_TestBlock)){
			var_enemy_rot = -1
		}
	} else {
		x = x - var_enemy_speed
		if (place_meeting(x-20,y-20,obj_TestBlock)){
			var_enemy_rot = 1
		}
	}
	if (var_enemy_canAttack == 1){
		vspeed =- var_enemy_Hjump
		var_enemy_canAttack = 0
		}
	if (distance_to_object(obj_player)< 350){
		var_enemy_Hjump = 8
	} else {
		var_enemy_Hjump = 3
	}
}		
