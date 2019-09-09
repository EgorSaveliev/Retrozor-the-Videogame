if (var_time_to_swich > 0){
	var_time_to_swich--
} else {
	if (var_alpha == 1){
		var_alpha = 0
	} else {
		var_alpha = 1
	}
	var_time_to_swich = 40
}

if (gamepad_button_check(0,gp_start)) or (gamepad_button_check(0,gp_face1)) or (gamepad_button_check(0,gp_face2)) or (gamepad_button_check(0,gp_face3)) or (gamepad_button_check(0,gp_face4)) {
	room_goto_next()
}