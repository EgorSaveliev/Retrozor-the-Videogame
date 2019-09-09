var_boss_AI_orb_time--
if (var_boss_AI_orb_time<0){
	var_boss_AI_orb_speed = 5
}
move_towards_point(obj_boss_AI_orbStart.x,obj_boss_AI_orbStart.y,var_boss_AI_orb_speed)