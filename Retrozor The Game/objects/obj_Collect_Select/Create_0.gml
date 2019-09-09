var_CollectSellect_LevelName = string(room_get_name(room))
var_CollectSellect_TimeToSwith = 5
var_CollectSellect_Sprite = "spr_player_" + var_player_type + "_stand"
var_CollectSellect_Name = ""
var_CollectSellect_FeklaTime = 400

if (var_player_collect == 1){
	switch (var_CollectSellect_LevelName){
		//Проверка обликов Фена
		case "Fen_Act_Stage01_StartNextLevel": var_player_collect_Fen_pilesos = "yes"; var_player_collect = 0; break;
		case "Fen_Act_Stage02_StartNextLevel": var_player_collect_Fen_drfen = "yes"; var_player_collect = 0; break;
	}
	
}