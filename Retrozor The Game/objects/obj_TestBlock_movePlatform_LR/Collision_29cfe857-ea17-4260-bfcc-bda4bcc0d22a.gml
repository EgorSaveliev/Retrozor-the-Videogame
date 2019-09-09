var_playerY = ceil(other.y)
var_selfY = floor(y)


if (var_playerY-1 < var_selfY){
	obj_player.y = obj_player.y-10
} else {
	
	if (var_move_change == 1) {
		var_move_change = 2
	} else {
		var_move_change = 1
	}
}



//obj_player.y = yprevious;
if (var_player_move != "hit") and (var_player_move != "dead"){
	var_player_move = "stand"
}
