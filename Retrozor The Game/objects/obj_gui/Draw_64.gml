//Фен хелсбар
if (var_player_type == "Fen") or (var_player_type == "Pilesos") or (var_player_type == "DrFen"){
	draw_sprite(spr_player_hud_Fen,all,x-48,y)
	
	//бар
	if (instance_exists(obj_player)){
		var sprite_Width = sprite_get_width(spr_player_Fen_hp);
		var sprite_Height = sprite_get_height(spr_player_Fen_hp);
		var hp_Percent = obj_player.var_player_hp/obj_player.var_player_MAXhp;
		draw_sprite(spr_player_Fen_hp,1,x, y+15);
		draw_sprite_part(spr_player_Fen_hp, 0, 0, 0, sprite_Width*hp_Percent, sprite_Height, x, y+15);
	}
	//бар для падающего фена
	if (instance_exists(obj_player_Fen_falling)){
		var sprite_Width = sprite_get_width(spr_player_Fen_hp);
		var sprite_Height = sprite_get_height(spr_player_Fen_hp);
		var hp_Percent = obj_player_Fen_falling.var_falling_fen_hp/ obj_player_Fen_falling.var_falling_fen_hpMax;
		draw_sprite(spr_player_Fen_hp,1,x, y+15);
		draw_sprite_part(spr_player_Fen_hp, 0, 0, 0, sprite_Width*hp_Percent, sprite_Height, x, y+15);
	}
}
//Флеб хелсбар
if (var_player_type == "Fleb"){
	draw_sprite(spr_player_hud_Fleb,all,x-48,y)
	
	//бар
	if (instance_exists(obj_player)){
		var sprite_Width = sprite_get_width(spr_player_Fleb_hp);
		var sprite_Height = sprite_get_height(spr_player_Fleb_hp);
		var hp_Percent = obj_player.var_player_hp/obj_player.var_player_MAXhp;
		draw_sprite(spr_player_Fleb_hp,1,x, y+15);
		draw_sprite_part(spr_player_Fleb_hp, 0, 0, 0, sprite_Width*hp_Percent, sprite_Height, x, y+15);
	}
}

//Френк хелсбар
if (var_player_type == "Frank"){
		draw_sprite(spr_player_hud_Frank,var_frank_gui_subimg,x-48,y)
		if (obj_player.var_player_hp > 65){
			var_frank_gui_subimg = 0
		} else {
			if (obj_player.var_player_hp < 30){
					var_frank_gui_subimg = 2
				} else {
					var_frank_gui_subimg = 1
				}
			}
	
	//бар
	if (instance_exists(obj_player)){
		var sprite_Width = sprite_get_width(spr_player_Fleb_hp);
		var sprite_Height = sprite_get_height(spr_player_Fleb_hp);
		var hp_Percent = obj_player.var_player_hp/obj_player.var_player_MAXhp;
		image_speed = 0.15
		draw_sprite_part(spr_player_Frank_hp, all, 0, 0, sprite_Width*hp_Percent, sprite_Height, x+42, y+15);
	}
}


if (var_pause_mode == 1){
	
	draw_sprite(spr_menu_Pause_BackGround,var_pause_exit,x+580,y+240)
	draw_text_color(x+535,y+260,"ПАУЗА",c_white,c_white,c_white,c_white,1)
}
