if (var_pause_time > 0){
	var_pause_time--
}

if (keyboard_check_pressed(vk_escape)) or (gamepad_button_check_pressed(0,gp_start))or (gamepad_button_check_pressed(1,gp_start))or (gamepad_button_check_pressed(2,gp_start))or (gamepad_button_check_pressed(3,gp_start)){
	if (var_pause_time == 0){
		var_pause_time = 30
		if (var_pause_mode == 0){
			var_pause_mode = 1
			var_pause_exit = 0
			instance_deactivate_all(self)
			instance_activate_object(obj_TestBlock)
			audio_pause_all()
			audio_play_sound(snd_pause,0,0)
		} else {
			var_pause_mode = 0
			audio_resume_all()
			instance_activate_all()
		}
	}
}

if (keyboard_check_pressed(88)) or (keyboard_check_pressed(vk_enter)) or(gamepad_button_check_pressed(0,gp_face1))or (gamepad_button_check_pressed(1,gp_face1))or (gamepad_button_check_pressed(2,gp_face1))or (gamepad_button_check_pressed(3,gp_face1)){
	if (var_pause_mode == 1) and (var_pause_time == 0){
		if ((var_pause_exit == 1)){
			var_pause_mode = 0
			audio_resume_all()
			instance_activate_all()
			room_goto(blackscreen012)
		} else {
		var_pause_mode = 0
		audio_resume_all()
		instance_activate_all()
		}
	} 
}

if (keyboard_check_pressed(vk_up)) or (keyboard_check_pressed(vk_down)) or (gamepad_button_check_pressed(0,gp_padu))  or (gamepad_button_check_pressed(0,gp_padd)) or (gamepad_button_check_pressed(1,gp_padu))  or (gamepad_button_check_pressed(1,gp_padd)) or (gamepad_button_check_pressed(2,gp_padu))  or (gamepad_button_check_pressed(2,gp_padd)) or (gamepad_button_check_pressed(3,gp_padu))  or (gamepad_button_check_pressed(3,gp_padd)){
	if (var_pause_time == 0){
		if (var_pause_exit == 0){
			var_pause_exit = 1
			var_pause_time = 5
		} else {
			var_pause_exit = 0
			var_pause_time = 5
		}
	}
}