draw_sprite(spr_menu_start_select,var_menu_selector,x,y)

draw_text(x+50,y+10,"Новая игра")
draw_text(x+50,y+60,"Продолжить игру")
draw_text(x+50,y+110,"Закрыть игру")

if (var_menu_selector == 1){
	draw_text(x-230,y+200,"В этой версии игры не представляется возможным")
}