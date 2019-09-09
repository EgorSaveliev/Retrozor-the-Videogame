var_boss_AI_humanoid_deadTime--

if (!audio_is_playing(snd_boss_AI_start)){
	audio_play_sound(snd_boss_AI_start,0,0)
}
if (var_boss_AI_humanoid_deadTime<0){
	audio_pause_sound(snd_boss_AI_start)
	audio_play_sound(snd_player_dead,0,0)
	instance_destroy(self)
}