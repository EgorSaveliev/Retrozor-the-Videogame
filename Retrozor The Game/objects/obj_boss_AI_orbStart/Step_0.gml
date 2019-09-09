var_boss_AI_orb_time--
if (var_boss_AI_orb_time <0){
	instance_destroy(obj_boss_AI_orb)
	instance_create_depth(x,y,0,obj_boss_AI_humanoidStart)
	instance_destroy(self)
}
if (var_boss_AI_orb_time == 240){
	audio_play_sound(snd_boss_AI_start,0,0)
}