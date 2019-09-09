script_execute(scr_gravity)
var_enemy_color = "c_white"

if (var_enemy_hp <= 0){
	instance_destroy(self)
	instance_create_depth(x,y-50,0,obj_destroy_animation)
}

if (var_enemy_InVeiw !=0){
	if (var_enemy_mode == "walk"){
		if (distance_to_object(obj_player) > 300){ //300
			if (place_meeting(x-20,y-5,obj_TestBlock)) or (!place_meeting(x-20,y+5,obj_TestBlock)){
				var_enemy_rot = 1
			}
			if (place_meeting(x+20,y-5,obj_TestBlock)) or (!place_meeting(x+20,y+5,obj_TestBlock)){
				var_enemy_rot = -1
			}
			
			if (var_enemy_rot = -1){
				x = x-4
			} else {
				x = x+4
			}
			
		} else {
			var_enemy_mode = "attack"
			var_animation_counter = 0
		}
		
		
	}
	
	if (var_enemy_mode == "attack") {
		if (var_animation_counter == 6){
		instance_create_depth(x,y-20,-1,obj_stage1_enemy_Fleb_Spear)
		}
		if (var_animation_counter == var_animation_max){
			var_animation_counter = 0
			var_enemy_mode = "transform"
		}
	}
	
	if (var_enemy_mode = "transform"){
		if (var_animation_counter == var_animation_max){
			instance_create_depth(x,y,depth,obj_stage1_enemy_Fleb_03)
			instance_destroy(self)
		}
	}
}