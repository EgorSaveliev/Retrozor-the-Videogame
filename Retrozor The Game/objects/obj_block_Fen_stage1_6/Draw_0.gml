if (place_meeting(x-1,y,obj_block_Fen_stage1_6)) and (place_meeting(x+1,y,obj_block_Fen_stage1_6)){
	draw_sprite(spr_Fen_stage1_block6,0,x,y)
} else {
	if (place_meeting(x-1,y,obj_block_Fen_stage1_6)) {
		draw_sprite(spr_Fen_stage1_block6,2,x,y)
	} else {
		if (place_meeting(x+1,y,obj_block_Fen_stage1_6)) {
			draw_sprite(spr_Fen_stage1_block6,1,x,y)
		} else {
			draw_sprite(spr_Fen_stage1_block6,3,x,y)
		}
	
	}
}