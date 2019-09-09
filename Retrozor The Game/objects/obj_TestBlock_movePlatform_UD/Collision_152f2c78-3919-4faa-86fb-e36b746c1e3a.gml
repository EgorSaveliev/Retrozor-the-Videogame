if (var_move_change == 1) {
	var_move_change = 2
} else {
	
	vspeed = 0
	
	if (position_empty(xstart,ystart)) and (position_empty(xstart+10,ystart))and (position_empty(xstart+15,ystart))and (position_empty(xstart-10,ystart))and (position_empty(xstart+20,ystart)) and (position_empty(xstart+40,ystart))and (position_empty(xstart+30,ystart)) and (position_empty(xstart+50,ystart))and (position_empty(xstart+80,ystart)) and (position_empty(xstart+70,ystart))and (position_empty(xstart+100,ystart)) and (position_empty(xstart+90,ystart)) and (position_empty(xstart+120,ystart))and (position_empty(xstart+130,ystart))and (position_empty(xstart+135,ystart)){
		if (position_empty(xstart,ystart-30)) and (position_empty(xstart+10,ystart-30))and (position_empty(xstart+15,ystart-30))and (position_empty(xstart-10,ystart-30))and (position_empty(xstart+20,ystart-30)) and (position_empty(xstart+40,ystart-30))and (position_empty(xstart+30,ystart-30)) and (position_empty(xstart+50,ystart-30))and (position_empty(xstart+80,ystart-30)) and (position_empty(xstart+70,ystart-30))and (position_empty(xstart+100,ystart-30)) and (position_empty(xstart+90,ystart-30)) and (position_empty(xstart+120,ystart-30))and (position_empty(xstart+130,ystart-30))and (position_empty(xstart+135,ystart-30)){
			if (position_empty(xstart,ystart+30)) and (position_empty(xstart+10,ystart+30))and (position_empty(xstart+15,ystart+30))and (position_empty(xstart-10,ystart+30))and (position_empty(xstart+20,ystart+30)) and (position_empty(xstart+40,ystart+30))and (position_empty(xstart+30,ystart+30)) and (position_empty(xstart+50,ystart+30))and (position_empty(xstart+80,ystart+30)) and (position_empty(xstart+70,ystart+30))and (position_empty(xstart+100,ystart+30)) and (position_empty(xstart+90,ystart+30)) and (position_empty(xstart+120,ystart+30))and (position_empty(xstart+130,ystart+30))and (position_empty(xstart+135,ystart+30)){
				instance_create_depth(x+20,y,0,obj_boss_AI_sparkle)
				instance_create_depth(x+72,y,0,obj_boss_AI_sparkle)
				instance_create_depth(x+124,y,0,obj_boss_AI_sparkle)
				y = ystart
	
				instance_create_depth(x+20,y,0,obj_boss_AI_sparkle)
				instance_create_depth(x+72,y,0,obj_boss_AI_sparkle)
				instance_create_depth(x+124,y,0,obj_boss_AI_sparkle)
			}
		}
	}
}