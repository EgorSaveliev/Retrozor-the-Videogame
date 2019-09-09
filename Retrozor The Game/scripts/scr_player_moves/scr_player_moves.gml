if (var_player_move != "dead"){
	//чит
	if (gamepad_button_check(0, gp_shoulderr)){
		var_player_hp = var_player_MAXhp
	}
	
	//движения
	if (var_player_move != "jump") and (var_player_move != "hit"){
		var_player_move = "stand"
	}

	// вправо
	if (keyboard_check(vk_right)) or (gamepad_button_check(0,gp_padr)) or (gamepad_button_check(1,gp_padr)) or (gamepad_button_check(2,gp_padr)){ 
		var_player_rotation = 1
		if (!position_meeting(x+40,y,obj_TestBlock)){
			x = x+6
		}
		if (var_player_move != "jump")and (var_player_move != "hit") {
			var_player_move = "walk"
		}
	}
	
	// влево
	if  (keyboard_check(vk_left)) or (gamepad_button_check(0,gp_padl)) or (gamepad_button_check(1,gp_padl)) or (gamepad_button_check(2,gp_padl)) { 
		var_player_rotation = -1
		if (!position_meeting(x-40,y,obj_TestBlock)){
			x = x-6
		}
		if (var_player_move != "jump")and (var_player_move != "hit"){
			var_player_move = "walk"
		}
	}
	// прыжок
	if (keyboard_check_pressed(90))  or (gamepad_button_check_pressed(0,gp_face1))  or (gamepad_button_check_pressed(1,gp_face1)) or (gamepad_button_check_pressed(2,gp_face1)){ 
			if (!place_free(x,y+2)) and (place_free(x-2,y)) and (place_free(x+2,y)) {
				audio_play_sound(snd_player_jump,1,0)
				
					if (var_player_LevelName != "Fen_Act_Stage03") {
						vspeed = -10
					} else {
						vspeed = -7
					}
					if (var_player_move != "hit") and (var_player_move != "dead") {
						var_player_move = "jump"
					}
			}
	}
	// выстрел\удар
	if (keyboard_check_pressed(88)) or (gamepad_button_check_pressed(0,gp_face3)) or (gamepad_button_check_pressed(1,gp_face3))  or (gamepad_button_check_pressed(2,gp_face3)){
		//ФЕН
		if (var_player_type == "Fen") or (var_player_type == "Pilesos") or (var_player_type == "DrFen"){
			if (instance_number(obj_projecttile_Fen)<3)
				if(var_player_rotation == 1){
					instance_create_depth(x+40,y-60,0,obj_projecttile_Fen)
				} else {
					instance_create_depth(x-60,y-60,0,obj_projecttile_Fen)
				}
		}//ФЕН ЭЙЧ ДИ
		if (var_player_type == "FenHD"){
			if (instance_number(obj_projecttile_Fen)<3)
				if(var_player_rotation == 1){
					instance_create_depth(x+40,y-60,0,obj_projecttile_Fen)
				} else {
					instance_create_depth(x-60,y-60,0,obj_projecttile_Fen)
				}
		}
		//Френк
		if (var_player_type == "Frank") {
			if (var_player_Frank_hand_mode == "off"){
				var_player_animation_change = 0
				if (instance_number(obj_projecttile_Frank)<3){
					if(var_player_rotation == 1){
						instance_create_depth(x+40,y-60,0,obj_projecttile_Frank)
					} else {
						instance_create_depth(x-60,y-60,0,obj_projecttile_Frank)
					}
				}
				var_player_Frank_hand_mode = "on"
			}
		}
		//Флеб
		if (var_player_type == "Fleb") {
			if (var_player_Fleb_top_mode == "off"){
				var_player_animation_change = 0
				if (instance_number(obj_projecttile_Fleb)<1){
					if(var_player_rotation == 1){
						instance_create_depth(x+40,y-60,0,obj_projecttile_Fleb)
					} else {
						instance_create_depth(x-60,y-60,0,obj_projecttile_Fleb)
					}
				}
				var_player_Fleb_top_mode = "on"
			}
		}
		
	}
	if (var_player_move == "jump"){
		if (place_meeting(x,y-10,obj_TestBlock)){
			vspeed = +3
		}
	}
}
