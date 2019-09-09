if (!position_meeting(x-80,y+60,obj_Menu_start_screeen)){
	x = x-20
}
var_time_to_swich--
if (var_time_to_swich<0){
	room_goto_next()
}