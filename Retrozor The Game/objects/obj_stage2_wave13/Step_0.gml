if (var_wave_TimeToStart > 0){
	var_wave_TimeToStart--
} else {
	
	if (var_wave_TimeToSpawn == 0){
		room_goto_next()
	}
}