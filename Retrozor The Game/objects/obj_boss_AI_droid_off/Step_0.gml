var_boss_AI_droid_off_timeToStart--
if (var_boss_AI_droid_off_timeToStart < 0){
instance_create_depth(x,y,0,obj_boss_AI_droid_on)
instance_destroy(self)
}