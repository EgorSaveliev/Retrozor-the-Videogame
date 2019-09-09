if (place_meeting(x-10,y,obj_block_Fen_stage4_1)) and (place_meeting(x+50,y,obj_block_Fen_stage4_1)){
	draw_sprite(spr_Fen_stage4_block1_1,0,x,y)
} else {

if (place_meeting(x-10,y,obj_block_Fen_stage4_1)){
	draw_sprite(spr_Fen_stage4_block1_2,0,x,y)
}
 else {

if (place_meeting(x+55,y,obj_block_Fen_stage4_1)){
	draw_sprite(spr_Fen_stage4_block1_3,0,x,y)
}
}
}