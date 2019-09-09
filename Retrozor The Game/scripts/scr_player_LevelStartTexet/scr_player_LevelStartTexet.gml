
switch (var_player_LevelName){
	case "Fen_Act_Stage01": var_player_LevelStartText = "Похоже, это наша с Френком игра!"; break;
	case "Fen_Act_Stage01_boss": var_player_LevelStartText = "Если это наша игра, то босс тут..."; break;
	case "Fen_Act_Stage02": var_player_LevelStartText = "    Подозрительно..."; break;
	case "Fen_Act_Stage02_1": var_player_LevelStartText = "АААААААААААААААААААААА"; break;
	case "Fen_Act_Stage02_2": var_player_LevelStartText = "   Я НЕ ХОЧУ УМИРАТЬ!"; break;
	case "Fen_Act_Stage02_boss": var_player_LevelStartText = "Я словно в фильме про хоббитов"; break;
	case "Fen_Act_Stage03": var_player_LevelStartText = "Хьюстон, я так плавно падаю!"; break;
	case "Fen_Act_Stage03_boss": var_player_LevelStartText = "Не нравятся мне эти надписи..."; break;
	default: var_player_LevelStartText = ""; break;
}

if (var_player_LevelStartText_col >0) {	
	var_player_LevelStartText_col --
}

if (var_player_LevelStartText_col != 0){
	draw_text_color(x-177,y-137,var_player_LevelStartText,c_black,c_black,c_black,c_black,1)
	draw_text(x-180,y-140,var_player_LevelStartText)	
}