var_boss_AU_cannon_color = c_white
if (!instance_exists(obj_boss_AI)){
	var_boss_AI_cannon_canAttack--

	if (var_boss_AI_cannon_canAttack < 0){
		instance_create_depth(x+72,y+72,0,obj_boss_AI_cannon_projectile)
		var_boss_AI_cannon_canAttack = irandom_range(100,500)
	}
	if (var_boss_AU_cannon_hp < 0){
		
		instance_destroy(self)
	}
}