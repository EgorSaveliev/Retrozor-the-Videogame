if (instance_number(obj_bonus)) == 1{
		instance_create_depth(x,y-120,1,obj_bonus_text)
	}
	

instance_destroy(self)

audio_play_sound(snd_player_bonus,1,0)