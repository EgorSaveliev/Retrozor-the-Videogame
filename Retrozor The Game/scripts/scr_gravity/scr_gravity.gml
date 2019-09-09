if (place_free(x, y + 1)) {
 gravity_direction = 270; 
 gravity = 0.3;
}
else {
 gravity = 0;
 vspeed = 0
}
if (vspeed > 15) {
 vspeed = 15;
}