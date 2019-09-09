if (var_boss_hp <=0){
	instance_create_depth(x,y,0,obj_boss_spider_dead)
	instance_destroy(self)
}
var_boss_color = c_white

if (var_boss_time_to_random > 0){
	var_boss_time_to_random--
} else {
	if (var_boss_mode == "stand") and (var_boss_time_to_random == 0){
		var_boss_attack_random = irandom_range(1,3)
	}
}

switch (var_boss_attack_random){
case 1: var_boss_mode = "attack1"; break;
case 2: var_boss_mode = "attack2"; break;
case 3: var_boss_mode = "attack3"; break;
}

script_execute(scr_spider_attack1)
script_execute(scr_spider_attack2)
script_execute(scr_spider_attack3)
