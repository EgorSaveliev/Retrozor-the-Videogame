if (var_enemy_hp <= 0) {
	instance_create_depth(x,y-50,0,obj_destroy_animation)
	instance_destroy(self)
}
