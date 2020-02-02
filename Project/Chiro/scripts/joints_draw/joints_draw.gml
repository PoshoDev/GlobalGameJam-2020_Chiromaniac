for (var i=0; i<array_height_2d(global.joints); i++)
{
    var path = path_add();
    
    for (var j=0; j<array_length_2d(global.joints, i); j++)
    {
        var joint = global.joints[i, j];
        path_add_point(path, joint.x, joint.y, 0);
    }
    
    path_set_closed(path, false);
    path_set_kind(path, true);
    
    var flip = 0;
    
    if (i != 0)
    {
        var spr = spr_extremity;
        var len = 64;
        
        switch (i)
        {
            case 1: // Arm-L
                var flip = 1;
                len *= 0.8;
            break;
            
            case 2: // Arm-R
                len *= 0.8;
            break;
            
            case 3: // Leg-L
                var flip = 1;
            break;
            
            case 4: // Leg-R
            break;
        }
    }
    else
    {
        // Torso
        var spr = spr_shirt;
        var len = 64*3;
    }
        
    draw_path_sprite(path, 0, 0, len, spr, flip, 1, 1, image_blend, image_alpha, 32, false);
    
    if (i != 0)
    {
        joint_draw_extremity_first(i);
        joint_draw_extremity_end(i);
    }
}