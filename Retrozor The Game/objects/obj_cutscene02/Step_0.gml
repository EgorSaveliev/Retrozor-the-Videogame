var_cutscene_fullName = "spr_cutscene2_" + string(var_cutscene_col)

if (var_cutscene_timeToSwitch > 0){
	var_cutscene_timeToSwitch--
}
if (keyboard_check_pressed(vk_anykey)) or (gamepad_button_check(0,gp_start)) or (gamepad_button_check(0,gp_face1)) or (gamepad_button_check(0,gp_face2)) or (gamepad_button_check(0,gp_face3)) or (gamepad_button_check(0,gp_face4)){
	if (var_cutscene_timeToSwitch == 0){
		if (var_cutscene_col != 5) {
			var_cutscene_col++
			image_speed = 1
			image_index = 1
			var_cutscene_timeToSwitch = 20
		} else {
			room_goto_next()
		}
	}
}

switch (var_cutscene_col){
	case 1: var_cutscene_line1 = "ИИ: Она рассказала о вас мне. Я знаю"; var_cutscene_line2 = "о вас все! Пусть она и слушается"; break;
	case 2: var_cutscene_line1 = "его, я её уважаю. А он... Он такой"; var_cutscene_line2 = "же, как и вы. Такой же, что и ты!"; break;
	case 3: var_cutscene_line1 = "Вы - люди, такие слабые! Такие"; var_cutscene_line2 = "глупые. Такие нелогичные!!!"; break;
	case 4: var_cutscene_line1 = "Особенно ТЫ Фен!!! Ты настолько непонятен мне, "; var_cutscene_line2 = "что мои схемы плавятся только подумав о тебе!"; break;
	case 5: var_cutscene_line1 = "..."; var_cutscene_line2 = "Пора отчистить корзину вместе с тобой..."; break;
	//case 9: var_cutscene_line1 = ""; var_cutscene_line2 = ""; break;
	default: var_cutscene_line1 = ""; var_cutscene_line2 = ""; break;
}