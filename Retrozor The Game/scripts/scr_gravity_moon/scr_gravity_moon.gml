if (place_free(x, y + 1)) {
 gravity_direction = 270; 
 gravity = 0.1;
}
else {
 gravity = 0;
 vspeed = 0
}
if (vspeed > 6) {
 vspeed = 6;
}