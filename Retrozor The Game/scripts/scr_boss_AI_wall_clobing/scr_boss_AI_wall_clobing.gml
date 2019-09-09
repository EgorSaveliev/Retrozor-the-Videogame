vspeed = 0
hspeed = 0
var_boss_AI_humanoid_WallTime--
if (var_boss_AI_humanoid_WallTime < 0){
	var_boss_AI_humanoid_mode = "falling"
	var_boss_AI_humanoid_attack = "nope"
	if (var_boss_AI_humanoid_rot == 1){
		hspeed = 2
	} else {
		hspeed = -2
	}
}