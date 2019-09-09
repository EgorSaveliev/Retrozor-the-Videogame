if (place_meeting(x-5,y,obj_block_Fen_stage1_1)){
	draw_sprite(spr_Fen_stage1_block3,0,x,y)
}

if (place_meeting(x+50,y,obj_block_Fen_stage1_1)){
	draw_sprite(spr_Fen_stage1_block2,0,x,y)
}

if (place_meeting(x+50,y,obj_block_Fen_stage1_1)) and (place_meeting(x-5,y,obj_block_Fen_stage1_1)){
	draw_sprite(spr_Fen_stage1_block4,0,x,y)
}

if (!place_meeting(x+50,y,obj_block_Fen_stage1_1)) and (!place_meeting(x-5,y,obj_block_Fen_stage1_1)){
	draw_sprite(spr_Fen_stage1_block1,0,x,y)
}