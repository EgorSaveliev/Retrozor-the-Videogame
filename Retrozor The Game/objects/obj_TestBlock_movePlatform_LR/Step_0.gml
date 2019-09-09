if (var_move_change == 1){
	hspeed = +var_move_block_speed
} else {
	hspeed = -var_move_block_speed
}

if (place_meeting(x,y-4,obj_player))or (place_meeting(x + 90,y-4,obj_player)) or (place_meeting(x + 40,y-4,obj_player)) or (place_meeting(x + 120,y-4,obj_player)){
	obj_player.hspeed = hspeed
	if (var_player_move == "jump") or (y < obj_player.y){
		obj_player.hspeed = 0
	}
}