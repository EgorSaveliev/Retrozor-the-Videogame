var_boss_AI_humanoid_color = c_white
script_execute(scr_boss_AI_gravity)

if (var_boss_AI_humanoid_hp <= 0){
	var_boss_AI_humanoid_mode = "dead"
}
if (obj_player.x+5 > x){
	var_boss_AI_humanoid_rot = 1
} else {
	var_boss_AI_humanoid_rot = -1
}

//будем думать над атакой
if (var_boss_AI_humanoid_mode == "stand") and (var_boss_AI_humanoid_attack == "nope"){
	var_boss_AI_humanoid_timeToAttack = 200
	var_boss_AI_humanoid_Wire = 0
	var_boss_AI_humanoid_spawnCol = 0
	var_boss_AI_humanoid_WallTime = 300
	var_boss_AI_humanoid_jumpCount = 0
	var_boss_AI_humanoid_mode = "stand_nextMove"
} 

if (var_boss_AI_humanoid_mode == "stand_nextMove"){
	var_boss_AI_humanoid_timeToAttack--
	if (var_boss_AI_humanoid_timeToAttack < 0){
		var_boss_AI_humanoid_attack = choose ("jumping","spawn","wire","jumping")
	}
}


//атаки
if (var_boss_AI_humanoid_attack == "jumping"){
	script_execute(scr_boss_AI_jumping)
}
if (var_boss_AI_humanoid_attack == "wall"){
	script_execute(scr_boss_AI_wall_clobing)
}
if (var_boss_AI_humanoid_attack == "wire"){
	script_execute(scr_boss_AI_wire)
}
if (var_boss_AI_humanoid_attack == "spawn"){
	script_execute(scr_boss_AI_spawn)
}
if (var_boss_AI_humanoid_mode == "dead"){
	instance_destroy(self)
}