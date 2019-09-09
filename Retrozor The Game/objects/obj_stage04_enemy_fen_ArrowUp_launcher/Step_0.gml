if (var_trap_InView == 1){
	var_trap_time--
	
	if (var_trap_mode == 1){
		if (var_trap_attackCol <3){
			if (var_trap_time <0){
				var_trap_attackCol++
				instance_create_depth(x+30,y,-1,obj_stage04_enemy_fen_ArrowUp)
				var_trap_time = 30
			}
		} else {
		var_trap_mode = 2
		var_trap_attackCol = 0
		}
	} else {
		if (var_trap_attackCol <2){
			if (var_trap_time <0){
				var_trap_attackCol++
				instance_create_depth(x+24,y,-1,obj_stage04_enemy_fen_ArrowUp)
				var_trap_time = 80
			}
		} else {
		var_trap_mode = 1
		var_trap_attackCol = 0
		}
	}
}