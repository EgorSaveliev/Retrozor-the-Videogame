if (var_CollectSellect_TimeToSwith != 0){
	var_CollectSellect_TimeToSwith--
}

switch (var_player_type){
	case "Fen": var_CollectSellect_Name = "Фен"; break;
	case "Pilesos": var_CollectSellect_Name = "Пылесос"; break;
	case "DrFen": var_CollectSellect_Name = "Доктор Фен"; break;
}

var_CollectSellect_Sprite = "spr_player_" + var_player_type + "_stand"

if (keyboard_check_pressed(vk_right)) or (gamepad_button_check_pressed(0, gp_padr))  or (gamepad_button_check_pressed(1, gp_padr))or (gamepad_button_check_pressed(2, gp_padr)){
	obj_menu_Sellect_Decor01.image_index=0
	//Облики Фена
	if (var_CollectSellect_TimeToSwith == 0){
		if (var_player_type == "Fen") and (var_player_collect_Fen_pilesos == "yes"){
			var_CollectSellect_TimeToSwith = 10
			var_player_type = "Pilesos"
		} else {
			if (var_player_type == "Fen") and (var_player_collect_Fen_drfen == "yes"){
			var_CollectSellect_TimeToSwith = 10
			var_player_type = "DrFen"
		} else {
			if (var_player_type == "Pilesos") and (var_player_collect_Fen_drfen == "yes"){
				var_CollectSellect_TimeToSwith = 10
				var_player_type = "DrFen"
			} else {
				var_CollectSellect_TimeToSwith = 10
				var_player_type = "Fen"
			}
		}
		
	}
}
}
if (keyboard_check_pressed(vk_space)) or (gamepad_button_check_pressed(0, gp_face1))  or (gamepad_button_check_pressed(1, gp_face1))  or (gamepad_button_check_pressed(2, gp_face1)){
	room_goto_next()
}

var_CollectSellect_FeklaTime--