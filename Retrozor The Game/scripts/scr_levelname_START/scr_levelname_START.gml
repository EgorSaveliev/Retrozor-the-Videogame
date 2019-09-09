var_level_name = room_get_name(room)
var_level_name_text = ""

switch (var_level_name){
	//Фен
	case "Fen_Act_Stage01_CLEAR": var_level_name_text = "Этап 1: Атака Акул-китайцев!" ; break;
	case "Fen_Act_Stage02_CLEAR": var_level_name_text = "Этап 2: Фенопад" ; break;
	case "Fen_Act_Stage03_CLEAR": var_level_name_text = "Этап 3: 20ХХ год: Лунная одиссея"; break;
	case "Fen_Act_Stage04_START": var_level_name_text = "Этап 4: Фанки Роял Хаус"; break;
	//Флеб
	case "Fleb_Act_Stage01_START": var_level_name_text = "Этап 1: Super Sweet World"; break;
}
