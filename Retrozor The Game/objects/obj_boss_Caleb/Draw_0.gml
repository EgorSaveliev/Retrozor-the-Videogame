if (var_boss_mode != "dead"){
	if (var_boss_sprite_boss == "stand"){
		draw_sprite(spr_boss_caleb_stand,all,x,y)
	} 

	if (var_boss_sprite_boss == "hit"){
		draw_sprite(spr_boss_caleb_hit,all,x,y)
	}

	if (var_boss_sprite_boss == "left"){
		draw_sprite(spr_boss_caleb_left,all,x,y)
	}
	if (var_boss_sprite_boss == "right"){
		draw_sprite(spr_boss_caleb_right,all,x,y)
	}

} else {
	draw_sprite(spr_boss_caleb_dead,all,x,y)
}