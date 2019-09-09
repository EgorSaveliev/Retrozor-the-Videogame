//if (gamepad_button_check(0, gp_shoulderr)){
//		var_falling_fen_hp = var_falling_fen_hpMax
//	}
if (!place_meeting(x,y+5,obj_TestBlock)){
	vspeed = +2
}
if (var_falling_fen_move != "dead"){ //движение
	if (keyboard_check(vk_right)) or (gamepad_button_check(0,gp_padr)) or (gamepad_button_check(1,gp_padr)) or (gamepad_button_check(2,gp_padr)){
		if (!place_meeting(x+5,y,obj_TestBlock)){
			x = x + 6
			var_falling_fen_dir = 1
		}
	}
	
	if (keyboard_check(vk_left)) or (gamepad_button_check(0,gp_padl)) or (gamepad_button_check(1,gp_padl)) or (gamepad_button_check(2,gp_padl)){
		if (!place_meeting(x-5,y,obj_TestBlock)){
			x = x - 6
			var_falling_fen_dir = -1
		}
	}
	
	if (keyboard_check(vk_up)) or (gamepad_button_check(0,gp_padu)) or (gamepad_button_check(1,gp_padu)) or (gamepad_button_check(2,gp_padu)){
		if (!place_meeting(x,y-5,obj_TestBlock)){
			y = y - 6
		}
	}
	
	if (keyboard_check(vk_down)) or (gamepad_button_check(0,gp_padd)) or (gamepad_button_check(1,gp_padd)) or (gamepad_button_check(2,gp_padd)){
		if (!place_meeting(x,y+5,obj_TestBlock)){
		y = y + 6
			}
	}
	
	//стрельба
	if (keyboard_check_pressed(88)) or (gamepad_button_check_pressed(0,gp_face3)) or (gamepad_button_check_pressed(1,gp_face3)) or (gamepad_button_check_pressed(2,gp_face3)){
		if (instance_number(obj_projecttile_Fen)<3)
			if(var_falling_fen_dir == 1){
				instance_create_depth(x+20,y-35,0,obj_projecttile_Fen)
			} else {
				instance_create_depth(x-45,y-35,0,obj_projecttile_Fen)
			}
	}
	
	if (var_falling_fen_hit_animation > 0){
	var_falling_fen_hit_animation--
	if (var_falling_fen_hit_animation == 1){
		var_falling_fen_invulnerability_time = 150
		var_falling_invulnerability_alpha = 5
	}
	} else {
		var_falling_fen_move = "stand"
	
	}

if (var_falling_fen_invulnerability_time > 0){
	var_falling_fen_invulnerability_time --
	
	if (var_falling_invulnerability_alpha > 0){
		var_falling_invulnerability_alpha--
	} else {
		var_falling_invulnerability_alpha = 5
		if (var_falling_fen_alpha = 1){
			var_falling_fen_alpha = 0
		} else {
			var_falling_fen_alpha = 1
		}
	}
	
} else {
	var_falling_fen_alpha = 1
}
	
if (var_falling_fen_hp <= 0){
	 var_falling_fen_move = "dead"	
}

}





if (var_falling_fen_move == "dead"){
	if (instance_number(obj_player_dead_sparkle) == 0){
		instance_create_depth(x,y,0,obj_destroy_animation)
	}
	
	
	if (instance_number(obj_player_dead_sparkle) < 8) and (var_player_dead_sparkle_after != 1){
		instance_create_depth(x,y,0,obj_player_dead_sparkle)
		var_player_dead_sparkle_after = var_player_dead_sparkle_after - 1
		if (instance_number(obj_player_dead_sparkle) == 8){
			var_player_dead_sparkle_after = 1
		}
	}
	
	if (var_player_dead_sparkle_after == 1){
		if (instance_number(obj_player_dead_sparkle) == 0){
			room_goto(Fen_Act_Stage02)
		}
	}
}

if (var_falling_fen_hp > var_falling_fen_hpMax){
	var_falling_fen_hp = var_falling_fen_hpMax
}
if (instance_exists(obj_stage2_wave13)){
	move_towards_point(650,700,6)
}