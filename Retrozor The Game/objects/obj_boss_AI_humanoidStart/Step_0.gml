var_boss_AI_start--
if (var_boss_AI_start < 0){
	instance_create_depth(x,y+50,0,obj_boss_AI_humanoid)
	instance_destroy(self)
}