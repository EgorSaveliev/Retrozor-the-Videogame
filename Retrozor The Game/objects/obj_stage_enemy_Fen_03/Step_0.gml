var_enemy_plyayerX = obj_player.x
var_enemy_plyayerY = obj_player.y
script_execute(scr_gravity)
script_execute(scr_enemy_dead)
var_enemy_color = "c_white"

if (var_enemy_InVeiw == 1){
	if (var_enemy_plyayerX>x+5){
		var_enemy_rot = 1
	} else {
		var_enemy_rot = -1
	}
	
	if (var_enemy_mode == "stand"){
		if (var_enemy_rot == 1){
			if (!place_meeting(x+20,y-10,obj_TestBlock)){
				x = x + var_enemy_speed
			}
		}
		if (var_enemy_rot == -1){
			if (!place_meeting(x-20,y-10,obj_TestBlock)){
				x = x - var_enemy_speed
			}
		}
		if (distance_to_object(obj_player) < 50){
			var_enemy_mode = "attack"
		}
		
	if (var_enemy_mode == "attack"){
		hspeed = 0
		if (var_enemy_rot == 1){
			instance_create_depth(x+30,y-70,0,obj_stage_enemy_Fen_03_attack)
		} else {
			instance_create_depth(x-100,y-70,0,obj_stage_enemy_Fen_03_attack)
		}
	}
	
}
}