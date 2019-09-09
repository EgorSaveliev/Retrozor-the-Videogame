obj_boss_AI_on.var_boss_AI_hp = obj_boss_AI_on.var_boss_AI_hp - 10
obj_boss_AI_on.var_boss_AI_color = c_red
instance_destroy(other)
audio_play_sound(snd_enemy_hit,1,0)
var_boss_AI_droid_color = c_red