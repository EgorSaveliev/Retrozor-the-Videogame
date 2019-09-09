draw_self()

draw_text(x+10,y+60,var_level_name_text)

if (var_player_collect > 0){
	draw_sprite(spr_all_bonus,all,x+220,y+150)
	draw_text(x+70,y+270,"все шмотки собраны")
} else {
	draw_text(x-20,y+270,"увы, но вы не собрали все шмотки")
}