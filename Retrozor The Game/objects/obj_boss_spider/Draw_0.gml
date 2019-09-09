
if (var_boss_mode == "attack3"){
	image_speed = 0.7
} else {
	image_speed = 1
}

if (var_boss_mode == "attack2") and (var_boss_ready_to_attack==0){
	if (var_boss_attack2_random == 2){
		if (x > obj_spider_place2.x){
			var_boss_rot = 1
		} else {
			var_boss_rot = -1
		}
	} else {
		if (x > obj_spider_place3.x){
			var_boss_rot = 1
		} else {
			var_boss_rot = -1
		}
	}
} else {
	if (x > obj_player.x){
		var_boss_rot = 1
	} else {
		var_boss_rot = -1
	}
}

if (var_boss_mode == "stand"){
	draw_sprite_ext(spr_boss_spider_stand,all,x,y,var_boss_rot,1,0,var_boss_color,1)
}

if (var_boss_mode == "attack1"){
	if (var_boss_ready_to_attack == 0){
		draw_line_width(x,y-45,obj_spider_place1.x,obj_spider_place1.y,3)
		draw_sprite_ext(spr_boss_spider_stand,0,x,y,1,1,0,var_boss_color,1)
	} else {
		draw_sprite_ext(spr_boss_spider_attack1,all,x,y,-1,1,0,var_boss_color,1)
	}
}

if (var_boss_mode == "attack2") {
	if (var_boss_ready_to_attack == 0){
		if (var_boss_attack2_random == 2){
			draw_line_width(x,y-45,obj_spider_place2.x,obj_spider_place2.y,3)
		} else {
			draw_line_width(x,y-45,obj_spider_place3.x,obj_spider_place3.y,3)
		}
		draw_sprite_ext(spr_boss_spider_stand,0,x,y,var_boss_rot,1,0,var_boss_color,1)
	} else {
		draw_sprite_ext(spr_boss_spider_attack2,all,x,y,var_boss_rot,1,0,var_boss_color,1)
	}
}

if (var_boss_mode == "attack3"){
	if (var_boss_ready_to_attack == 0){
		draw_line_width(x,y-45,obj_spider_place4.x,obj_spider_place4.y,3)
		draw_sprite_ext(spr_boss_spider_stand,0,x,y,var_boss_rot,1,0,var_boss_color,1)
	} else {
		draw_sprite_ext(spr_boss_spider_attack3,all,x,y,var_boss_rot,1,0,var_boss_color,1)
	}
}

