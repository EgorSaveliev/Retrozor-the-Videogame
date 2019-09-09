var_boss_AU_cannon_hp = var_boss_AU_cannon_hp - 10
instance_destroy(other)
audio_play_sound(snd_enemy_hit,1,0)
var_boss_AU_cannon_color = c_red