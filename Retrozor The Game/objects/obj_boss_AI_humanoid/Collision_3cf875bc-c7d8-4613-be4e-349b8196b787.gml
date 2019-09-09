	instance_destroy(other)
	var_boss_AI_humanoid_color = c_lime
	var_boss_AI_humanoid_hp = var_boss_AI_humanoid_hp - obj_player.var_player_attack
	audio_play_sound(snd_enemy_hit,1,0)