/// @param joint_section
var joint_section = argument0;

var last = array_length_2d(global.joints, joint_section) - 1;
var joint = global.joints[joint_section, last];
var prev = global.joints[joint_section, last-1];
var angle = point_direction(joint.x, joint.y, prev.x, prev.y) + 180;

var sca = 0.25;
var spr = noone;
var flip = 1;

switch(joint_section)
{
    case 1:
        if (global.okaying == -1)
            spr = spr_hand_3;
        else if (global.holup)
            spr = spr_hand_2;
        else
            spr = spr_hand_1;
            
        sca = 0.35;
        flip = -1;
    break;
    
    case 2:
        if (global.okaying == -1)
            spr = spr_hand_3;
        else if (global.holup)
            spr = spr_hand_2;
        else
            spr = spr_hand_1;
            
        sca = 0.35;
    break;
    
    case 3:
        spr = spr_shoe;
        flip = -1;
    break;
    
    case 4:
        spr = spr_shoe;
    break;
}

draw_sprite_ext(spr, 0, joint.x, joint.y, sca, sca*flip, angle, image_blend, image_alpha);