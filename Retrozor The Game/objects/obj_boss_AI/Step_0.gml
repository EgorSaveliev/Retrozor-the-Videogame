var_boss_AI_timeToStart--

if (var_boss_AI_timeToStart < 0){
	if (var_boss_AI_textMode == 1){
		var_boss_AI_textMode = 2
		var_boss_AI_timeToStart = 120

	} else {
		instance_destroy()
	}
	
}

if (var_boss_AI_textMode == 2){

							//------вот столько текста-------//
	var_boss_AI_TextLine01 = "что за тупое имя? почему не тостер?"
	var_boss_AI_TextLine02 = ""
	var_boss_AI_TextLine03 = ""
	var_boss_AI_TextLine04 = "!!!УМРИ!!! !!!УМРИ!!! !!!УМРИ!!! !!!УМРИ!!!"
	var_boss_AI_TextLine05 = "!!!УМРИ!!! !!!УМРИ!!! !!!УМРИ!!! !!!УМРИ!!!"
	var_boss_AI_TextLine06 = "!!!УМРИ!!! !!!УМРИ!!! !!!УМРИ!!! !!!УМРИ!!!"
	var_boss_AI_TextLine07 = ""
	var_boss_AI_TextLine08 = ""
	var_boss_AI_TextLine09 = "что за дурацкие шмотки? сандали?"
}