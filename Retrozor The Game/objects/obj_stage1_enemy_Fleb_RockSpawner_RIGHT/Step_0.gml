if (distance_to_object(obj_player)<2200){
	if (var_enemy_TimeToAttack > 0){
		var_enemy_TimeToAttack--
	} else {
		instance_create_depth(x,y-2,1,obj_stage1_enemy_Fleb_05_RIGHT)
		var_enemy_TimeToAttack = var_enemy_TimeAttack
	}
}