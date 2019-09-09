if (var_boss_mode == "attack1"){
	if (var_boss_ready_to_attack == 0){
		
			if (obj_spider_place1.x < x){
				x = x - 6
			} else {
				x = x + 6
			}
			if (obj_spider_place1.y > y){
				y = y + 6
			} else {
				y = y - 6
			}
		if (place_meeting(x,y,obj_spider_place1)){
			var_boss_ready_to_attack = 1
			var_boss_attack1_time = 140
		}	
	} else {
		if (var_boss_ready_to_attack == 1){
			var_boss_attack1_time--
			x = x + 8
			if (var_boss_attack1_time <= 0){
			var_boss_time_to_random = 150
			var_boss_attack1_time = 140
			var_boss_attack_random = 0
			var_boss_ready_to_attack = 0
			var_boss_mode = "stand"
		}
		} 
	}
}