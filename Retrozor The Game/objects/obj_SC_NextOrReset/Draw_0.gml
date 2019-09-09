if (var_button_position == "next"){
	draw_sprite(spr_menu_NextOrReset,0,x,y)
} else {
	draw_sprite(spr_menu_NextOrReset,1,x,y)
}

draw_text(x+48,y+10,"Далее")
draw_text(x+48,y+65,"Заново")