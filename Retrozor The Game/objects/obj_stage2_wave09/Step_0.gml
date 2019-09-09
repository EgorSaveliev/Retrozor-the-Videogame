if (var_wave_TimeToStart > 0){
	var_wave_TimeToStart--
} else {
	
	if (var_wave_TimeToSpawn == 0) and (var_wave_enemy2_spawn > 0){
		var_wave_TimeToSpawn = 50
		if (var_wave_enemy2_spawn == 16){
			instance_create_depth(x,y,0,obj_stage2_enemy_Fen_2)
		}
		if (var_wave_enemy2_spawn == 15){
			instance_create_depth(x+1100,y,0,obj_stage2_enemy_Fen_2)
		}
		if (var_wave_enemy2_spawn == 14){
			instance_create_depth(x,y,0,obj_stage2_enemy_Fen_2)
		}
		if (var_wave_enemy2_spawn == 13){
			instance_create_depth(x+1100,y,0,obj_stage2_enemy_Fen_2)
		}
		if (var_wave_enemy2_spawn == 12){
			instance_create_depth(x,y,0,obj_stage2_enemy_Fen_2)
		}
		if (var_wave_enemy2_spawn == 11){
			instance_create_depth(x+1100,y,0,obj_stage2_enemy_Fen_2)
		}
		if (var_wave_enemy2_spawn == 10){
			instance_create_depth(x,y,0,obj_stage2_enemy_Fen_2)
		}
		if (var_wave_enemy2_spawn == 9){
			instance_create_depth(x+1100,y,0,obj_stage2_enemy_Fen_2)
		}
		if (var_wave_enemy2_spawn == 8){
			instance_create_depth(x,y,0,obj_stage2_enemy_Fen_2)
		}
		if (var_wave_enemy2_spawn == 7){
			instance_create_depth(x+1100,y,0,obj_stage2_enemy_Fen_2)
		}
		if (var_wave_enemy2_spawn == 8){
			instance_create_depth(x,y,0,obj_stage2_enemy_Fen_2)
		}
		if (var_wave_enemy2_spawn == 7){
			instance_create_depth(x+1100,y,0,obj_stage2_enemy_Fen_2)
		}
		if (var_wave_enemy2_spawn == 6){
			instance_create_depth(x,y,0,obj_stage2_enemy_Fen_2)
		}
		if (var_wave_enemy2_spawn == 5){
			instance_create_depth(x+1100,y,0,obj_stage2_enemy_Fen_2)
		}
		if (var_wave_enemy2_spawn == 4){
			instance_create_depth(x,y,0,obj_stage2_enemy_Fen_2)
		}
		if (var_wave_enemy2_spawn == 3){
			instance_create_depth(x+1100,y,0,obj_stage2_enemy_Fen_2)
		}
		if (var_wave_enemy2_spawn == 2){
			instance_create_depth(x,y,0,obj_stage2_enemy_Fen_2)
		}
		if (var_wave_enemy2_spawn == 1){
			instance_create_depth(x+1100,y,0,obj_stage2_enemy_Fen_2)

		}
		
		
		var_wave_enemy2_spawn--
		
		
	}
	var_wave_TimeToSpawn--
	
	if (instance_number(obj_stage2_enemy_Fen_1)== 0) and (instance_number(obj_stage2_enemy_Fen_2)== 0)and (instance_number(obj_stage2_enemy_Fen_3)== 0){
		instance_destroy(self)
	}
}
