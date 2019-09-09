script_execute(scr_gravity)
var_enemy_color = "c_white"

if (var_enemy_hp <= 0){
	instance_destroy(self)
	instance_create_depth(x,y-50,0,obj_destroy_animation)
}

if (var_enemy_InVeiw !=0){
	if (var_enemy_mode == "walk"){
		
			if (place_meeting(x-20,y-20,obj_TestBlock)) {
				var_enemy_rot = 1
			}
			if (place_meeting(x+20,y-20,obj_TestBlock)) {
				var_enemy_rot = -1
			}
			
			if (var_enemy_rot = -1){
				x = x-3
			} else {
				x = x+3
			}
			
			
			if (!place_meeting(x-20,y-20,obj_TestBlock)) and (!place_meeting(x-20,y+20,obj_TestBlock)) {
				var_enemy_mode = "jump"
			}
			if (!place_meeting(x+20,y-20,obj_TestBlock)) and (!place_meeting(x+20,y+20,obj_TestBlock)){
				var_enemy_mode = "jump"
			}
			
			if (distance_to_object(obj_player)<40){
				var_animation_counter = 0
				var_enemy_mode = "attack"
			}
		}
		
		if (var_enemy_mode == "jump"){
			if (var_enemy_canJump == 1){
				vspeed = -8
				var_enemy_canJump = 0
				if (!audio_is_playing(snd_enemy_candy_jump)){
					audio_play_sound(snd_enemy_candy_jump,0,0)
				}
				
			} else {
				if (place_meeting(x,y+5,obj_TestBlock)){
					var_enemy_mode = "walk"
						if (x >= obj_player.x){
							var_enemy_rot = -1
						} else {
							var_enemy_rot = 1
						}
					var_enemy_canJump = 1
				}
			}
			
			if (place_meeting(x-20,y-20,obj_TestBlock)) {
				var_enemy_rot = 1
			}
			if (place_meeting(x+20,y-20,obj_TestBlock)) {
				var_enemy_rot = -1
			}
			
			if (var_enemy_rot = -1){
				x = x-5
			} else {
				x = x+5
			}
			
		}
		
		if (var_enemy_mode == "attack"){
			if (var_animation_counter == var_animation_max){
				if (x >= obj_player.x){
					var_enemy_rot = -1
				} else {
					var_enemy_rot = 1
				}
				var_enemy_mode = "walk"
			}
		}
	}