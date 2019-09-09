if (var_boss_hp <= 0){
	var_boss_mode = "dead"
}
if (var_boss_mode != "dead"){
	if (var_boss_time_to_attack == 0){
		var_boss_attack_random = irandom_range(1, 3)
	}

	var_boss_time_to_attack--



	switch (var_boss_attack_random) {
		case 1: var_boss_mode = "attack1"; break; //кулаки
		case 2: var_boss_mode = "attack2"; break; //спавн самураев
		case 3: var_boss_mode = "attack3"; break; //вуду
	}

	switch (var_boss_mode){
		case "attack1": var_boss_sprite_boss = "hit";   break;
		case "attack2": var_boss_sprite_boss = "left";  break;
		case "attack3": var_boss_sprite_boss = "right"; break;
		case "stand" : var_boss_sprite_boss = "stand"; break;
	}


	if (var_boss_sprite_boss == "stand"){	
			if (var_boss_x > x){
				x = x + 10
			}
			if (var_boss_x < x){
				x = x - 10
			}
			if (var_boss_y > y){
				y = y + 10
			}
			if (var_boss_y < y){
				y = y - 10
			}
	}

	if (var_boss_sprite_boss == "left"){
		if (!place_meeting(x+80,y,obj_block_Fen_stage1_8)){
			x = x+6
			y = y +1
		}	
	}

	if (var_boss_sprite_boss == "right"){
		if (!place_meeting(x-80,y,obj_block_Fen_stage1_8)){
			x = x-6
			y = y -1
		}	
	}
} else {
	if (instance_number(obj_stop)==0){
		instance_create_depth(x,y,0,obj_stop)
	}
	vspeed = +1.5
	if (!audio_is_playing(snd_boss_explosion)){
		audio_play_sound(snd_boss_explosion,1,1)
	}
	var_boss_time_to_explosion--
	if (var_boss_time_to_explosion < 0){
		var_boss_explosion_x = irandom_range(20,300)
		var_boss_explosion_y = irandom_range(20,300)
		instance_create_depth(x + var_boss_explosion_x,y +var_boss_explosion_y,-1,obj_destroy_animation)
		
		var_boss_time_to_explosion = 5
	}
}