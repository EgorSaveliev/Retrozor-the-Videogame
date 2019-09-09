if (var_boss_mode == "attack3"){
	if (var_boss_ready_to_attack == 0) {
		if (floor(x) != 427) and (floor(y) != 300){
			if (floor(x)>floor(obj_spider_place4.x)){
				x = x - 6
			} else {
				x = x + 6
			}
			
			if (floor(y)>floor(obj_spider_place4.y)){
				y = y - 6
			} else {
				y = y + 6
			}
			
		} else {
			var_boss_attack3_time = 500
			var_boss_ready_to_attack = 1
		}
	} else {
		if (var_boss_attack3_time > 0){
			var_boss_attack3_time--
			var_boss_attack3_time_to_next_attack--
			if (var_boss_attack3_time_to_next_attack < 0){
				var_boss_attack3_time_to_next_attack = 50
			if (var_boss_attack3_mode == 1){
				instance_create_depth(x,y,0,obj_boss_spider_projectile2) 
				instance_create_depth(x,y,0,obj_boss_spider_projectile2) 
				instance_create_depth(x,y,0,obj_boss_spider_projectile2) 
				instance_create_depth(x,y,0,obj_boss_spider_projectile2) 
				instance_create_depth(x,y,0,obj_boss_spider_projectile2) 
				instance_create_depth(x,y,0,obj_boss_spider_projectile2) 
				instance_create_depth(x,y,0,obj_boss_spider_projectile2) 
				instance_create_depth(x,y,0,obj_boss_spider_projectile2) 
			} else {
				instance_create_depth(x,y,0,obj_boss_spider_projectile2) 
				instance_create_depth(x,y,0,obj_boss_spider_projectile2) 
				instance_create_depth(x,y,0,obj_boss_spider_projectile2) 
				instance_create_depth(x,y,0,obj_boss_spider_projectile2) 
				instance_create_depth(x,y,0,obj_boss_spider_projectile2) 
				instance_create_depth(x,y,0,obj_boss_spider_projectile2) 
				instance_create_depth(x,y,0,obj_boss_spider_projectile2) 
				instance_create_depth(x,y,0,obj_boss_spider_projectile2) 
				instance_create_depth(x,y,0,obj_boss_spider_projectile2) 

			}
				
			if (var_boss_attack3_mode == 1){
				var_boss_attack3_mode = 0
			} else {
				var_boss_attack3_mode = 1
			}	
			}
		} else {
			var_boss_time_to_random = 150
			var_boss_attack_random = 0
			var_boss_mode = "stand"
			var_boss_ready_to_attack = 0
			var_boss_attack3_time_to_next_attack = 50
			var_boss_attack_random = 0
		}
	}
}