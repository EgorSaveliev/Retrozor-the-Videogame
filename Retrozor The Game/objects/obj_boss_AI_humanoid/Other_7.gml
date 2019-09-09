if (var_boss_AI_humanoid_mode == "landing"){	
	vspeed = 0	
	var_boss_AI_humanoid_mode = "stand"
}

if (var_boss_AI_humanoid_mode == "wall"){
	instance_create_depth(x,y,0,obj_boss_AI_energy)
}
if (var_boss_AI_humanoid_mode == "wire"){
	var_boss_AI_humanoid_mode = "stand"
}
