if (var_boss_AI_humanoid_jumpCount < 3) {
	if (var_boss_AI_humanoid_mode == "stand_nextMove") or (var_boss_AI_humanoid_mode == "stand"){
		var_boss_AI_humanoid_jumpRot = choose(1,-1,-1,-1,-1,1)
		var_boss_AI_humanoid_mode = "jumping"
		var_boss_AI_humanoid_jumpTime = 120
		var_boss_AI_humanoid_jumpCount = var_boss_AI_humanoid_jumpCount+1
	}
} else {
	if (var_boss_AI_humanoid_jumpCount == 3) and (var_boss_AI_humanoid_mode == "stand"){
		var_boss_AI_humanoid_attack = "nope"
	}
}
if (var_boss_AI_humanoid_mode == "jumping"){
	if (var_boss_AI_humanoid_jumpTime == 120){
		vspeed = -10
	}
		if (var_boss_AI_humanoid_jumpRot == 1){
				x = x + 4
			} else {
				x = x -4
			}
	var_boss_AI_humanoid_jumpTime--
	if (var_boss_AI_humanoid_jumpTime<0){
		var_boss_AI_humanoid_mode = "falling"
	}
}