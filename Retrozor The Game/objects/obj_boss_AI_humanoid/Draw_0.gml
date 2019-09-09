if (var_boss_AI_humanoid_mode == "falling"){
	draw_sprite_ext(spr_boss_AI_human_falling,all,x,y,var_boss_AI_humanoid_rot,1,0,var_boss_AI_humanoid_color,1)
}
if (var_boss_AI_humanoid_mode == "landing"){
	draw_sprite_ext(spr_boss_AI_human_landing,all,x,y,var_boss_AI_humanoid_rot,1,0,var_boss_AI_humanoid_color,1)
	image_speed = 1
}
if (var_boss_AI_humanoid_mode == "stand") or (var_boss_AI_humanoid_mode == "stand_nextMove"){
	draw_sprite_ext(spr_boss_AI_human_stand,all,x,y,var_boss_AI_humanoid_rot,1,0,var_boss_AI_humanoid_color,1)
	image_speed = 1
}

if (var_boss_AI_humanoid_mode == "jumping"){
	draw_sprite_ext(spr_boss_AI_human_jumping,all,x,y,var_boss_AI_humanoid_rot,1,0,var_boss_AI_humanoid_color,1)
	image_speed = 3
}

if (var_boss_AI_humanoid_mode == "wall"){
	draw_sprite_ext(spr_boss_AI_human_wall_climbing,all,x,y,var_boss_AI_humanoid_rot,1,0,var_boss_AI_humanoid_color,1)
	image_speed = 2
}
if (var_boss_AI_humanoid_mode == "spawn"){
	draw_sprite_ext(spr_boss_AI_human_spawn,all,x,y,var_boss_AI_humanoid_rot,1,0,var_boss_AI_humanoid_color,1)
	image_speed = 3
}

if (var_boss_AI_humanoid_mode == "wire"){
	draw_sprite_ext(spr_boss_AI_human_wire_attack,all,x,y,var_boss_AI_humanoid_rot,1,0,var_boss_AI_humanoid_color,1)
	image_speed = 1.3
}
//draw_text(x,y-100,var_boss_AI_humanoid_attack)
//draw_text(x,y-130,var_boss_AI_humanoid_mode)
//draw_text(x,y-160,var_boss_AI_humanoid_jumpCount)
//draw_text(x,y-190,var_boss_AI_humanoid_jumpTime)
