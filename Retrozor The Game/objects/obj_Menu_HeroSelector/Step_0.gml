if (var_menu_selector_CanChange > 0){
	var_menu_selector_CanChange--
}

//Клава
if (keyboard_check_pressed(vk_right)){
		if (var_menu_selector_mode == 0) and (var_menu_selector_CanChange == 0){
			var_menu_selector_CanChange = 5
			var_menu_selector_mode = 1
		}
		if (var_menu_selector_mode == 1) and (var_menu_selector_CanChange == 0){
			var_menu_selector_CanChange = 5
			var_menu_selector_mode = 2
		}
		if (var_menu_selector_mode == 2) and (var_menu_selector_CanChange == 0){
			var_menu_selector_CanChange = 5
			var_menu_selector_mode = 0
		}
		audio_play_sound(snd_Menu_Select,1,0)
}
if (keyboard_check_pressed(vk_left)){
		if (var_menu_selector_mode == 2) and (var_menu_selector_CanChange == 0){
			var_menu_selector_mode = 1
			var_menu_selector_CanChange = 5
		}
		if (var_menu_selector_mode == 1)and (var_menu_selector_CanChange == 0){
			var_menu_selector_mode = 0
			var_menu_selector_CanChange = 5
		}
		if (var_menu_selector_mode == 0)and (var_menu_selector_CanChange == 0){
			var_menu_selector_mode = 2
			var_menu_selector_CanChange = 5
		}
		audio_play_sound(snd_Menu_Select,1,0)
}

//Геймпад
if (gamepad_button_check_pressed(0,gp_padr)) or (gamepad_button_check_pressed(1,gp_padr))or (gamepad_button_check_pressed(2,gp_padr))or (gamepad_button_check_pressed(3,gp_padr)){
		if (var_menu_selector_mode == 0) and (var_menu_selector_CanChange == 0){
			var_menu_selector_CanChange = 5
			var_menu_selector_mode = 1
		}
		if (var_menu_selector_mode == 1) and (var_menu_selector_CanChange == 0){
			var_menu_selector_CanChange = 5
			var_menu_selector_mode = 2
		}
		if (var_menu_selector_mode == 2) and (var_menu_selector_CanChange == 0){
			var_menu_selector_CanChange = 5
			var_menu_selector_mode = 0
		}
		audio_play_sound(snd_Menu_Select,1,0)
}
if (gamepad_button_check_pressed(0,gp_padl)) or (gamepad_button_check_pressed(1,gp_padl))or (gamepad_button_check_pressed(2,gp_padl))or (gamepad_button_check_pressed(3,gp_padl)){
		if (var_menu_selector_mode == 2) and (var_menu_selector_CanChange == 0){
			var_menu_selector_mode = 1
			var_menu_selector_CanChange = 5
		}
		if (var_menu_selector_mode == 1)and (var_menu_selector_CanChange == 0){
			var_menu_selector_mode = 0
			var_menu_selector_CanChange = 5
		}
		if (var_menu_selector_mode == 0)and (var_menu_selector_CanChange == 0){
			var_menu_selector_mode = 2
			var_menu_selector_CanChange = 5
		}
		audio_play_sound(snd_Menu_Select,1,0)
}

//выбор уровня
if (keyboard_check_pressed(vk_space)) or (keyboard_check_pressed(vk_enter)) or (gamepad_button_check_pressed(0,gp_face1)) or (gamepad_button_check_pressed(1,gp_face1)) or (gamepad_button_check_pressed(2,gp_face1)) or (gamepad_button_check_pressed(3,gp_face1)){
	if (var_menu_selector_mode == 0){
		room_goto(blackscreen_to_Fen_Act)
		var_player_type = "Fen"
	}
	if (var_menu_selector_mode == 2){
		room_goto(blackscreen_to_Fleb_Act)
		var_player_type = "Fleb"
	}
}