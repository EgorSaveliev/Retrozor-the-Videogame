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