var_playerY = ceil(other.y)
var_selfY = floor(y)


if (var_playerY-3 < var_selfY){
	other.vspeed = vspeed
	other.y = other.y-1
} else {
	
}

//obj_player.y = yprevious;
if (var_player_move != "hit") and (var_player_move != "dead"){
	var_player_move = "stand"
}
