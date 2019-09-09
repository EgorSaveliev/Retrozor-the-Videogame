if (var_button_change>0){
	var_button_change--
}

if (var_button_change = 0){
	if (keyboard_check_pressed(vk_down)) or (keyboard_check_pressed(vk_up)) or (gamepad_button_check_pressed(0,gp_padu))  or (gamepad_button_check_pressed(0,gp_padd)){
		if (var_button_position == "next"){
			var_button_position = "reset"
		} else {
			var_button_position = "next"
		}
	} 


if (keyboard_check_pressed(vk_enter)) or (keyboard_check_pressed(vk_space)) or (gamepad_button_check_pressed(0,gp_face1)){
	audio_play_sound(snd_Menu_Select,1,0)
	if (var_button_position == "reset"){ //заново
		switch (obj_SC_title.var_level_name){
			case "Fen_Act_Stage01_CLEAR": room_goto(Fen_Act_Stage01); break;
			case "Fen_Act_Stage02_CLEAR": room_goto(Fen_Act_Stage02); break;
			case "Fen_Act_Stage03_CLEAR": room_goto(Fen_Act_Stage03); break;
		}
	} else { //дальше
		switch (obj_SC_title.var_level_name){
			case "Fen_Act_Stage01_CLEAR": room_goto_next(); break;
			case "Fen_Act_Stage02_CLEAR": room_goto_next(); break;
			case "Fen_Act_Stage03_CLEAR": room_goto_next(); break;
		}
	}
}
}