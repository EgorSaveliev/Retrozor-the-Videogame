var_cutscene_fullName = "spr_cutscene" + string(var_cutscene_col)

if (var_cutscene_timeToSwitch > 0){
	var_cutscene_timeToSwitch--
}
if (keyboard_check_pressed(vk_anykey)) or (gamepad_button_check(0,gp_start)) or (gamepad_button_check(0,gp_face1)) or (gamepad_button_check(0,gp_face2)) or (gamepad_button_check(0,gp_face3)) or (gamepad_button_check(0,gp_face4)){
	if (var_cutscene_timeToSwitch == 0){
		if (var_cutscene_col != 9) {
			var_cutscene_col++
			image_speed = 1.2
			image_index = 1
			var_cutscene_timeToSwitch = 20
		} else {
			room_goto(blackscreen_to_selecthero)
		}
	}
}

switch (var_cutscene_col){
	case 1: var_cutscene_line1 = "Космическая станция ''Бомж-пакет''"; var_cutscene_line2 = "Где-то в далёком космосе"; break;
	case 2: var_cutscene_line1 = "Френк: Что-ж, пора начинать новый выпуск."; var_cutscene_line2 = "Флеб: Верно говоришь, но вот где Фен?"; break;
	case 3: var_cutscene_line1 = "Фен: Эй ребят, кажется, что-то происходит."; var_cutscene_line2 = ""; break;
	//case 4: var_cutscene_line1 = ""; var_cutscene_line2 = ""; break;
	case 5: var_cutscene_line1 = "Флеб: Что за? Какой странный корабль..."; var_cutscene_line2 = "Фен: Кажется, старые друзья вернулись."; break;
	case 6: var_cutscene_line1 = "Френк: Они... Они пришли за нами?"; var_cutscene_line2 = "Флеб: Их судно выглядит как-то неважно..."; break;
	case 7: var_cutscene_line1 = "!!!ОНИ НАС АТАКУЮТ!!!"; var_cutscene_line2 = ""; break;
	case 8: var_cutscene_line1 = "Флеб: Что происходит???"; var_cutscene_line2 = "Френк: Это же черные дыры, Фен!"; break;
	//case 9: var_cutscene_line1 = ""; var_cutscene_line2 = ""; break;
	default: var_cutscene_line1 = ""; var_cutscene_line2 = ""; break;
}