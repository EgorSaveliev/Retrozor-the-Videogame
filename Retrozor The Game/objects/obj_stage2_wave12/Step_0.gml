if (var_wave_TimeToStart > 0){
	var_wave_TimeToStart--
} else {
	
	if (var_wave_TimeToSpawn == 0) and (var_wave_enemy1_spawn > 0){
		var_wave_TimeToSpawn = 80
		if (var_wave_enemy1_spawn == 8){
			instance_create_depth(x,y+700,0,obj_stage2_enemy_Fen_1)
		}
		if (var_wave_enemy1_spawn == 7){
			instance_create_depth(x+1100,y+700,0,obj_stage2_enemy_Fen_1)
		}
		if (var_wave_enemy1_spawn == 6){
			instance_create_depth(x,y,0,obj_stage2_enemy_Fen_1)
		}
		if (var_wave_enemy1_spawn == 5){
			instance_create_depth(x+1100,y,0,obj_stage2_enemy_Fen_1)
		}
		if (var_wave_enemy1_spawn == 4){
			instance_create_depth(x,y+540,0,obj_stage2_enemy_Fen_1)
		}
		if (var_wave_enemy1_spawn == 3){
			instance_create_depth(x+1100,y+540,0,obj_stage2_enemy_Fen_1)
		}
		if (var_wave_enemy1_spawn == 2){
			instance_create_depth(x,y+240,0,obj_stage2_enemy_Fen_1)
		}
		if (var_wave_enemy1_spawn == 1){
			instance_create_depth(x+1100,y+240,0,obj_stage2_enemy_Fen_1)
		}
		
		var_wave_enemy1_spawn--	
	}
	
		

	var_wave_TimeToSpawn--
	
	if (instance_number(obj_stage2_enemy_Fen_1)== 0) and (instance_number(obj_stage2_enemy_Fen_2)== 0)and (instance_number(obj_stage2_enemy_Fen_3)== 0){
		instance_destroy()
	}
}