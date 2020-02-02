// Debug Draw
draw_set_color(c_green)

for (var i=0; i<array_height_2d(global.joints); i++)
    for (var j=0; j<array_length_2d(global.joints, i); j++)
    {
        var joint = global.joints[i, j];
        
        if (joint.type==typ.joint || joint.type==typ.last)
            draw_line(joint.x, joint.y, joint.parent.x, joint.parent.y);
            
        draw_circle(joint.x, joint.y, 4, false);
    }

draw_set_color(c_white);