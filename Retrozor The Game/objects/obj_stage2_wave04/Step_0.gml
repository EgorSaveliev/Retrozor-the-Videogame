if (var_wave_TimeToStart > 0){
	var_wave_TimeToStart--
} else {
	
	if (var_wave_TimeToSpawn == 0) and (var_wave_enemy3_spawn > 0){
		var_wave_TimeToSpawn = 80
		if (var_wave_enemy3_spawn == 3){
			instance_create_depth(x,y,0,obj_stage2_enemy_Fen_3)
		} 
		if (var_wave_enemy3_spawn == 2){
			instance_create_depth(x+400,y,0,obj_stage2_enemy_Fen_3)
		} 
		if (var_wave_enemy3_spawn == 1){
			instance_create_depth(x+800,y,0,obj_stage2_enemy_Fen_3)
		} 
		
		var_wave_enemy3_spawn--
		
		
	}
	var_wave_TimeToSpawn--
	
	if (instance_number(obj_stage2_enemy_Fen_1)== 0) and (instance_number(obj_stage2_enemy_Fen_2)== 0)and (instance_number(obj_stage2_enemy_Fen_3)== 0){
		instance_destroy()
	}
}