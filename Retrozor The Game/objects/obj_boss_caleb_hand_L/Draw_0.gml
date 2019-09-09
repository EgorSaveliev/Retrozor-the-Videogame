if (obj_boss_Caleb.var_boss_mode == "stand"){
draw_sprite_ext(spr_boss_caleb_hand,all,x,y,-1,1,0,asset_get_index(var_hand_color),1)

}

if (obj_boss_Caleb.var_boss_mode == "dead"){
draw_sprite_ext(spr_boss_caleb_hand_dead,all,x,y,-1,1,0,asset_get_index(var_hand_color),1)
vspeed = + 1
}

if (obj_boss_Caleb.var_boss_mode == "attack1"){
	draw_sprite_ext(spr_boss_caleb_attack1,all,x,y,-1,1,0,asset_get_index(var_hand_color),1)

}

if (obj_boss_Caleb.var_boss_mode == "attack2"){
	draw_sprite_ext(spr_boss_caleb_attack2,all,x,y,1,1,0,asset_get_index(var_hand_color),1)

}

if (obj_boss_Caleb.var_boss_mode == "attack3"){
	draw_sprite_ext(spr_boss_caleb_attack3_L,all,x,y,1,1,0,asset_get_index(var_hand_color),1)

}