script_execute(scr_gravity)
var_enemy_color = "c_white"

if (var_enemy_hp <= 0){
	instance_destroy(self)
	instance_create_depth(x,y-50,0,obj_destroy_animation)
}

if (var_enemy_InVeiw !=0){
	if (var_enemy_mode == "attack"){
			if (place_meeting(x-20,y-20,obj_TestBlock)) {
				var_enemy_rot = 1
			}
			if (place_meeting(x+20,y-20,obj_TestBlock)) {
				var_enemy_rot = -1
			}
			
			if (var_enemy_rot = -1){
				x = x-6
			} else {
				x = x+6
			}
		}
	}