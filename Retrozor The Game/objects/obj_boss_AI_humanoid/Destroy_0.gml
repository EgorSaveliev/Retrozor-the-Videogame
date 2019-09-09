if (instance_exists(obj_boss_AI_cannon)){
	instance_destroy(obj_boss_AI_cannon)
}
instance_create_depth(x,y-50,0,obj_boss_AI_humanoid_dead)