if (var_enemy_mode != "stand"){
instance_destroy(other)
var_enemy_color = c_red
var_enemy_hp = var_enemy_hp - obj_player.var_player_attack

audio_play_sound(snd_enemy_hit,1,0)
} else {
	other.hspeed = -other.hspeed
	other.vspeed = -6	
	audio_play_sound(snd_enemy_bounce,1,0)
}