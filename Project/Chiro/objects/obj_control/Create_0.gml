
randomize();

// Bones

var minimum = 64;
var par = noone;

for (var i=0; i<3; i++)
{
    var hol = instance_create_depth(irandom_range(minimum, room_width-minimum), irandom_range(minimum, room_height-minimum), depth, obj_joint);
    hol.parent = par;
    par = hol;
}


// Initials
charging = false;
charge_max = 256;
charge_x = -1;
charge_y = -1;
to_x = -1;
to_y = -1;
colliding = false;
strength = -1;
