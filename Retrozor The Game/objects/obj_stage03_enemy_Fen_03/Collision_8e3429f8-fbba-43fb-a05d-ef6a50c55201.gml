if (var_enemy_InVeiw != 0){
	instance_destroy(other)
	var_enemy_color = c_red
	var_enemy_hp = var_enemy_hp - obj_player.var_player_attack
	var_enemy_color = "c_red"
	audio_play_sound(snd_enemy_hit,1,0)
}
