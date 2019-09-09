draw_sprite(spr_explosion,var_player_animation_change,x,y-60)
if (var_player_animation_counter < 30){
		var_player_animation_counter++
	}

	if (var_player_animation_counter == 8){
		var_player_animation_change++
		var_player_animation_counter = 0
	}
	if (var_player_animation_change > 60 ){
		var_player_animation_change = 0
	}

if (instance_number(obj_player_dead_sparkle) < 8) and (var_player_dead_sparkle_after != 1){
	instance_create_depth(x,y-60,0,obj_player_dead_sparkle)
	if (instance_number(obj_player_dead_sparkle) == 8){
		var_player_dead_sparkle_after = 1
	}
	
}


if (instance_number(obj_player_dead_sparkle)==0) and (var_player_dead_sparkle_after == 1){
	room_restart()
} 