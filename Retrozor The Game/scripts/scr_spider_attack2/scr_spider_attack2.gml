if (var_boss_mode == "attack2"){
	if (var_boss_attack2_random == 0){
		var_boss_attack2_random = irandom_range(2,3)
	} else {
		if (var_boss_attack2_random == 3) and (var_boss_ready_to_attack == 0){
			if (x > obj_spider_place3.x){
				x = x - 6
			} else {
				x = x + 6
			}
			if (y > obj_spider_place3.y){
				y = y - 6
			} else {
				y = y + 6
			}
			
			if (place_meeting(x,y,obj_spider_place3)){
				var_boss_attack2_time = 250
				var_boss_ready_to_attack = 1
			}
		} 
		
		if (var_boss_attack2_random == 2) and (var_boss_ready_to_attack == 0){
			if (x > obj_spider_place2.x){
				x = x - 6
			} else {
				x = x + 6
			}
			if (y > obj_spider_place2.y){
				y = y - 6
			} else {
				y = y + 6
			}
			
			if (place_meeting(x,y,obj_spider_place2)){
				var_boss_attack2_time = 250
				var_boss_ready_to_attack = 1
			}
		}
		if (var_boss_ready_to_attack == 1) {
			var_boss_attack2_time--
			if (var_boss_attack2_time <= 0) {
				var_boss_ready_to_attack = 0
				var_boss_attack2_random = 0
				var_boss_time_to_random = 150
				var_boss_attack_random = 0
				var_boss_mode = "stand"
				
			}
		} 	
	}
}

