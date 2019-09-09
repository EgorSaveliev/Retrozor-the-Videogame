script_execute(scr_gravity)
var_enemy_color = "c_white"

if (var_enemy_hp <= 0){
	instance_destroy(self)
	instance_create_depth(x,y-50,0,obj_destroy_animation)
}

if (var_enemy_InVeiw !=0){
	if (var_enemy_mode == "walk"){
			if (place_meeting(x-80,y-40,obj_TestBlock)) or (!place_meeting(x-80,y+50,obj_TestBlock)){
				var_enemy_rot = 1
			}
			if (place_meeting(x+80,y-40,obj_TestBlock)) or (!place_meeting(x+80,y+50,obj_TestBlock)){
				var_enemy_rot = -1
			}
			
			if (var_enemy_rot = -1){
				x = x-1.5
			} else {
				x = x+1.5
			}
		}
	}