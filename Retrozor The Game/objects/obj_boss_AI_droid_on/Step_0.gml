var_boss_AI_droid_color = c_white
if (obj_boss_AI_droid_path.x+5 >= x){
	var_boss_AI_droid_rot = -1
}else {
	var_boss_AI_droid_rot = 1
}
move_towards_point(obj_boss_AI_droid_path.x,obj_boss_AI_droid_path.y,4)