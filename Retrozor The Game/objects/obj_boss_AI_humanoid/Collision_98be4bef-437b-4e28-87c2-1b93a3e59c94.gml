if (var_boss_AI_humanoid_mode == "falling") {
	var_boss_AI_humanoid_mode = "landing"
	audio_play_sound(snd_boss_AI_landing,0,0)
	image_index=0
	vspeed = 0
	hspeed = 0
	}
if (var_boss_AI_humanoid_mode == "jumping"){
	var_boss_AI_humanoid_mode = "wall"
	var_boss_AI_humanoid_attack = "wall"
	
}
