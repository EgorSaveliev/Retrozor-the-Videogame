if (instance_number(obj_stop)==0){
		instance_create_depth(x,y,0,obj_stop)
	}
	vspeed = +1.5
	if (!audio_is_playing(snd_boss_explosion)){
		audio_play_sound(snd_boss_explosion,1,1)
	}
	var_boss_time_to_explosion--
	if (var_boss_time_to_explosion < 0){
		var_boss_explosion_x = irandom_range(-95,95)
		var_boss_explosion_y = irandom_range(-95,95)
		instance_create_depth(x + var_boss_explosion_x,y +var_boss_explosion_y,-1,obj_destroy_animation)
		
		var_boss_time_to_explosion = 5
	}