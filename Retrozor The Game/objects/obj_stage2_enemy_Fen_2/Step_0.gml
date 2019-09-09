var_enemy_plyayerX = obj_player_Fen_falling.x
var_enemy_plyayerY = obj_player_Fen_falling.y
script_execute(scr_enemy_dead)

var_enemy_color = "c_white"
var_enemy_sprite = "spr_fen_stage02_enemy02_" + var_enemy_mode

if (var_enemy_mode == "stand"){
	if (x == var_enemy_plyayerX+20) or (x == var_enemy_plyayerX-20) or (x == var_enemy_plyayerX){ 
		if (var_enemy_rot = 1){
			instance_create_depth(x,y,0,obj_enemy_projectile_03)
		} else {
			instance_create_depth(x-20,y,0,obj_enemy_projectile_03)
		}
		var_enemy_mode = "attack"
	}
} else {
	if (hspeed > 0){
		hspeed = 5
	} else {
		hspeed = -5
	}
}