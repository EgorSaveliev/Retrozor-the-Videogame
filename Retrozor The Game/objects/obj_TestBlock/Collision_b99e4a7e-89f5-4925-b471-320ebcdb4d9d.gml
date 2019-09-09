var_playerY = ceil(other.y)
var_selfY = floor(y)

if (var_playerY < var_selfY){
	other.vspeed = 0;
}

//x = xprevious;
//obj_player.y = yprevious;
if (var_player_move != "hit") and (var_player_move != "dead"){
	var_player_move = "stand"
	obj_player.gravity = 0
}
if (place_meeting(x,y-10,obj_player)){
	obj_player.y = y-2
}
