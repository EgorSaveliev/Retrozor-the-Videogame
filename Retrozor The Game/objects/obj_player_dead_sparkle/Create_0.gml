var_player_dead_sparkle_numb = instance_number(obj_player_dead_sparkle)
switch (var_player_dead_sparkle_numb){
case 1: vspeed = +8; break;
case 2: vspeed = +8; hspeed = +8;break;
case 3: hspeed = +8 ;break;
case 4: hspeed = +8 ;vspeed = -8;break;
case 5: vspeed = -8;break;
case 6: vspeed = -8; hspeed = -8 ;;break;
case 7: hspeed = -8;break;
case 8: hspeed = -8; vspeed = +8;break;
}

audio_stop_all()
audio_play_sound(snd_player_dead,0,0)