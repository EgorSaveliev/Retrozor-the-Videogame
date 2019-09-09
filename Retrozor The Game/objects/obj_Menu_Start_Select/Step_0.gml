if (var_menu_CanChange > 0){
	var_menu_CanChange--
}
//клава
if (keyboard_check_pressed(vk_enter)) or (keyboard_check_pressed(vk_space)) or (gamepad_button_check_pressed(0,gp_face1))or (gamepad_button_check_pressed(1,gp_face1))or (gamepad_button_check_pressed(2,gp_face1))or (gamepad_button_check_pressed(3,gp_face1)){
	if (var_menu_CanChange == 0){
		if (var_menu_selector == 0){
			room_goto(blackscreen0121)
		}
		if (var_menu_selector == 1){
			
		}
		if (var_menu_selector == 2){
			instance_create_depth(1200,672,0,obj_EE_Dmitry_Kungurov)
		}
		audio_play_sound(snd_Menu_selected,1,0)
	}
}

 //геймпад
if (gamepad_button_check_pressed(0,gp_padu)) {
	if (var_menu_selector == 0) and (var_menu_CanChange == 0){
		var_menu_selector = 2
		var_menu_CanChange = 5
	}
	if (var_menu_selector == 1) and (var_menu_CanChange == 0){
		var_menu_selector = 0
		var_menu_CanChange = 5
	}
	if (var_menu_selector == 2) and (var_menu_CanChange == 0){
		var_menu_selector = 1
		var_menu_CanChange = 5
	}
	audio_play_sound(snd_Menu_Select,1,0)
}

if (gamepad_button_check_pressed(0,gp_padd)){
	if (var_menu_selector == 0) and (var_menu_CanChange == 0){
		var_menu_selector = 1
		var_menu_CanChange = 5
	}
	if (var_menu_selector == 1) and (var_menu_CanChange == 0){
		var_menu_selector = 2
		var_menu_CanChange = 5
	}
	if (var_menu_selector == 2) and (var_menu_CanChange == 0){
		var_menu_selector = 0
		var_menu_CanChange = 5
	}
	audio_play_sound(snd_Menu_Select,1,0)
}
