if (var_leaf_time>0){
	var_leaf_time--
} else {

	var_leaf_Xrange = irandom_range(0,1280)
	instance_create_depth(var_leaf_Xrange,y,0,obj_stage02_leaf)
		var_leaf_time = irandom_range(0, 300)
}
