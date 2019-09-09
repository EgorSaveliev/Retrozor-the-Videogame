if (var_boss_ready_to_attack == 1) and (var_boss_mode == "attack2") and (var_boss_attack2_time > 0){
	if (var_boss_rot == 1){
		instance_create_depth(x-80,y-80,0,obj_boss_spider_projectile1)		
	} else {
		instance_create_depth(x+80,y-80,0,obj_boss_spider_projectile1)	
	}
} 