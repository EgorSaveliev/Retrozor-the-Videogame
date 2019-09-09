draw_self()

draw_sprite(asset_get_index(var_CollectSellect_Sprite),0,x+80,y+96)
draw_text_color(x+33,y-43,var_CollectSellect_Name,c_black,c_black,c_black,c_black,1)
draw_text(x+30,y-40,var_CollectSellect_Name)



if (var_CollectSellect_FeklaTime>0){
	draw_text_color(x-323,y+117,"Если ты нашел достаточно шмотья,",c_black,c_black,c_black,c_black,1)
	draw_text_color(x-323,y+142,"то я смогу тебя приодеть!",c_black,c_black,c_black,c_black,1)
	draw_text (x-320,y+120,"Если ты нашел достаточно шмотья,")
	draw_text (x-320,y+145,"то я смогу тебя приодеть!")
}