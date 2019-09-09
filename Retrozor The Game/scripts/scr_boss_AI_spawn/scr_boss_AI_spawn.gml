if (var_boss_AI_humanoid_spawnCol != 5){
	var_boss_AI_humanoid_mode = "spawn"
	if (var_boss_AI_humanoid_spawnTime > 0){
		var_boss_AI_humanoid_spawnTime--
	} else {
		instance_create_depth(x,y-90,0,obj_boss_AI_spawn)
		var_boss_AI_humanoid_spawnCol = var_boss_AI_humanoid_spawnCol + 1
		var_boss_AI_humanoid_spawnTime = 30
	}
} else {
	var_boss_AI_humanoid_spawnCol = 0
	var_boss_AI_humanoid_attack = "nope"
	var_boss_AI_humanoid_mode = "stand"
}