var_boss_AI_explosionTime--
if (var_boss_AI_explosion == 0) and (var_boss_AI_explosionTime == 0){
	instance_create_depth(x+360,y+192,0,obj_boss_AI_orbStart)
}
if (var_boss_AI_explosionTime<0) and (var_boss_AI_explosion == 3){
	instance_create_depth(x+50,y+50,0,obj_destroy_animation)
	instance_create_depth(x+200,y+50,0,obj_destroy_animation)
	instance_create_depth(x+350,y+50,0,obj_destroy_animation)
	instance_create_depth(x+500,y+50,0,obj_destroy_animation)
	instance_create_depth(x+650,y+50,0,obj_destroy_animation)
	//instance_create_depth(x+720,y+50,0,obj_destroy_animation)
	audio_play_sound(snd_explosion_cannon,1,0)
	var_boss_AI_explosion = 0
	var_boss_AI_explosionTime = 60
}

if (var_boss_AI_explosionTime<0) and (var_boss_AI_explosion == 2){
	instance_create_depth(x+50,y+190,0,obj_destroy_animation)
	instance_create_depth(x+200,y+190,0,obj_destroy_animation)
	instance_create_depth(x+350,y+190,0,obj_destroy_animation)
	instance_create_depth(x+500,y+190,0,obj_destroy_animation)
	instance_create_depth(x+650,y+190,0,obj_destroy_animation)
	//instance_create_depth(x+720,y+190,0,obj_destroy_animation)
	var_boss_AI_explosion = 3
	var_boss_AI_explosionTime = 30
	audio_play_sound(snd_explosion_cannon,1,0)
}
if (var_boss_AI_explosionTime<0) and (var_boss_AI_explosion == 1){
	instance_create_depth(x+50,y+350,0,obj_destroy_animation)
	instance_create_depth(x+200,y+350,0,obj_destroy_animation)
	instance_create_depth(x+350,y+350,0,obj_destroy_animation)
	instance_create_depth(x+500,y+350,0,obj_destroy_animation)
	instance_create_depth(x+650,y+350,0,obj_destroy_animation)
	//instance_create_depth(x+720,y+350,0,obj_destroy_animation)
	var_boss_AI_explosion = 2
	var_boss_AI_explosionTime = 30
	audio_play_sound(snd_explosion_cannon,1,0)
}