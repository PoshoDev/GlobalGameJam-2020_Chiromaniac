
randomize();

// Bones

var minimum = 64;
var total = 3;

for (var i=0; i<sec.LENGTH; i++)
{
    var par = noone;
    
    for (j=0; j<total; j++)
    {
        show_debug_message("Printing "+string(j)+"-"+string(i));
        var hol = joint_make(j, i, total);
        
        hol.type = typ.unset;
        hol.parent = par;
        hol.child = noone;
        
        if (hol.parent != noone)
            hol.parent.child = hol;
            
        par = hol;
    }
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

lel = noone;