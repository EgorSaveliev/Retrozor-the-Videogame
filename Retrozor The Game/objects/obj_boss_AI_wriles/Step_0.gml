var_boss_AI_sparkleTime--
var_boss_AI_timeToMove--
if (var_boss_AI_sparkleTime = 0){
	var_boss_AI_sparkleX = irandom_range(-250,250)
	var_boss_AI_sparkleY = irandom_range(0,+100)
	instance_create_depth(x+var_boss_AI_sparkleX,y+var_boss_AI_sparkleY,-1,obj_boss_AI_sparkle)
	var_boss_AI_sparkleTime = 5
}
if (var_boss_AI_timeToMove > 0){
vspeed = -var_boss_AI_speedWire
} else {
vspeed = +var_boss_AI_speedWire
}
gamepad_set_vibration(0,0.5,0.5)
gamepad_set_vibration(1,0.5,0.5)
gamepad_set_vibration(2,0.5,0.5)
gamepad_set_vibration(3,0.5,0.5)