var_boss_AI_color = c_white
if (!instance_exists(obj_boss_AI_wireAlert)) and (!instance_exists(obj_boss_AI_wriles)){
	if (obj_boss_AI_check.var_boss_AI_check == 1){
		instance_create_depth(x,y,0,obj_boss_AI_wireAlert)
	}
}
if (var_boss_AI_hp <= 0) {
	instance_create_depth(x,y,1,obj_boss_AI_destroy)
	instance_destroy(obj_boss_AI_droid_on)
	instance_destroy(self)
}