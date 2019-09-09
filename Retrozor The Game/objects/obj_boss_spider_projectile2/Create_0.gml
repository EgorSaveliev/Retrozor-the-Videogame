var_boss_projectile_numb = instance_number(obj_boss_spider_projectile2)
vspeed = 12
if (obj_boss_spider.var_boss_attack3_mode == 1){
	switch (var_boss_projectile_numb){
	case 1: hspeed = -8; break;
	case 2: hspeed = -5; break;
	case 3: hspeed = -2; break;
	case 4: hspeed = 2; break;
	case 5: hspeed = 5; break;
	case 6: hspeed = 8; break;
	case 7: hspeed = 12; break;
	case 8: hspeed = -12; break;
	}
} else {
	switch (var_boss_projectile_numb){
	case 1: hspeed = -10; break;
	case 2: hspeed = -7; break;
	case 3: hspeed = -4; break;
	case 4: hspeed = 0; break;
	case 5: hspeed = 4; break;
	case 6: hspeed = 7; break;
	case 7: hspeed = 10; break;
	case 8: hspeed = -15; break;
	case 9: hspeed = 15; break;

	}
}