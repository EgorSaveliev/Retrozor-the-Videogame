if (obj_Menu_HeroSelector.var_menu_selector_mode == 1){
	draw_sprite(spr_Menu_SelectHero_Frank,var_menu_selector_animCount,x,y)
	if (var_menu_selector_animChange > 0){
		var_menu_selector_animChange--
	} else {
		if (var_menu_selector_animCount == 1){
			var_menu_selector_animCount = 2
			var_menu_selector_animChange = 30
		} else {
			var_menu_selector_animCount = 1
			var_menu_selector_animChange = 30
		}

	}
} else {
	draw_sprite(spr_Menu_SelectHero_Frank,0,x,y)
}