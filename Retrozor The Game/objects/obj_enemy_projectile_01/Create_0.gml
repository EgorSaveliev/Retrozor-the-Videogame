if (obj_player.x > x){
	hspeed = 4
} else {
	hspeed = -4
}

if (obj_player.y-140 > y){
	vspeed = 1
} 

if (obj_player.y+50 < y){
	vspeed = -1
} 

var_enemy_damage = 18