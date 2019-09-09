var_random_firework_colour = irandom(4)
var_firework_colour = 0


switch (var_random_firework_colour){
	case 0: var_firework_colour = 16711680 ; break;
	case 1: var_firework_colour = 255 ; break;
	case 2: var_firework_colour = 65535 ; break;
	case 3: var_firework_colour = 8388736 ; break;
	case 4: var_firework_colour = 65280 ; break;
}
image_speed = 1

var_firework_y = irandom_range (1,20)