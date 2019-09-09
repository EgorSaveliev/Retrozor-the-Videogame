var_enemy_playerX = obj_player.x
var_enemy_playerY = obj_player.y
script_execute(scr_gravity)
script_execute(scr_enemy_dead)
var_enemy_color = "c_white"
var_self_sprite = object_get_sprite(self)

if (var_enemy_InVeiw !=0) {
	
	if (var_enemy_playerX > x){
		var_enemy_rot = -1
	} else {
		var_enemy_rot = 1
	}
	if (var_enemy_mode == "stand"){
		if (var_enemy_TimeToAttack > 0){
			var_enemy_TimeToAttack--
		}

		if (var_enemy_TimeToAttack = 0){
			var_enemy_mode = "attack"
			var_enemy_projectile_exist = 1
			var_enemy_TimeToAttack = 80
			var_animation_counter = 0
		}
	}
	
	if (var_enemy_mode == "attack") and (var_enemy_projectile_exist != 0) {
		instance_create_depth(x,y-60,-1,obj_enemy_projectile_01)
	}

}
