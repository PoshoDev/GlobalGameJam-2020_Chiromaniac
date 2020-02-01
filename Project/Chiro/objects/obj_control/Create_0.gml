
randomize();

// Bones

var minimum = 64;
global.total = 5;

for (var i=0; i<sec.LENGTH; i++)
{
    var par = noone;
    
    if (i == sec.torso)
        var tot = 3;
    else
        var tot = global.total;
        
    for (j=0; j<tot; j++)
    {
        show_debug_message("Printing "+string(j)+"-"+string(i));
        var hol = joint_make(j, i, tot);
        
        //global.sections[i][j] = hol;
        
        hol.type = typ.unset;
        hol.parent = par;
        hol.child = noone;
        
        if (hol.parent != noone)
            hol.parent.child = hol;
            
        par = hol;
    }
}

instance_create_depth(global.pos_top_x, global.pos_top_y, depth+1, obj_face);


// Initials
charging = false;
charge_max = 256;
charge_x = -1;
charge_y = -1;
to_x = -1;
to_y = -1;
colliding = false;
strength = -1;
coords[0] = -1;
coords[1] = -1;

lel = noone;

// Cameras
zoom_level = 1;

//Get the starting view size to be used for interpolation later
default_zoom_width = camera_get_view_width(view_camera[0]);
default_zoom_height = camera_get_view_height(view_camera[0]);
