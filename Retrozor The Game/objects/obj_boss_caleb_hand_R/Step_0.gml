var_hand_color = "c_white"

if (obj_boss_Caleb.var_boss_mode == "stand"){
	
		if (var_hand_R_x > x){
			x = x + 10
		}
		if (var_hand_R_x < x){
			x = x - 10
		}
	
	
	
		if (var_hand_R_y > y){
			y = y + 10
		}
		if (var_hand_R_y < y){
			y = y - 10
		}
	
}

if (obj_boss_Caleb.var_boss_mode == "attack3"){
	if (!place_meeting(x,y+20,obj_block_Fen_stage1_9)){
		y = y+4
	}
}

if (obj_boss_Caleb.var_boss_mode == "attack2") {
	if (!place_meeting(x,y+20,obj_block_Fen_stage1_9)){
		y = y+8
		x = x + 2
	}  else {
		if (var_hand_time_to_spawn >= 0){
			var_hand_time_to_spawn--
		}
		if (var_hand_time_to_spawn == 1){
			var_hand_time_to_spawn = 40
			var_hand_spawn_monster = var_hand_spawn_monster +1
			instance_create_depth(x,y+60,0,obj_stage_enemy_Fen_03)
			obj_stage_enemy_Fen_03.var_enemy_InVeiw = 1
		}
		if (var_hand_spawn_monster = 1){
			obj_boss_Caleb.var_boss_attack_random = 0
			obj_boss_Caleb.var_boss_mode = "stand"
			var_hand_spawn_monster = 0
			obj_boss_Caleb.var_boss_time_to_attack = 250
			
		}
	}
}

if (obj_boss_Caleb.var_boss_mode == "attack1"){
	if (!place_meeting(x,y+20,obj_block_Fen_stage1_9)){
		y = y+4
		x = x-2
	} else {
		x = x+10
	}
}