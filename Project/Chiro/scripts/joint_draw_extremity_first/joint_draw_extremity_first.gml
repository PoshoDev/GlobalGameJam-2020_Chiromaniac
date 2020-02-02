var joint_section = argument0;

var joint = global.joints[joint_section, 0];
var next =  global.joints[joint_section, 1];
var angle = point_direction(joint.x, joint.y, next.x, next.y);

var sca = 0.25;
var spr = noone;
var flip = 1;

switch(joint_section)
{
    case 1:
        spr = spr_shirt_sleeve;
        sca = 0.35;
        flip = -1;
    break;
    
    case 2:
        spr = spr_shirt_sleeve;
        sca = 0.35;
    break;
    
    case 3:
        spr = spr_pants_hole;
        var sca = 0.4;
        flip = -1;
    break;
    
    case 4:
        spr = spr_pants_hole;
        var sca = 0.4;
    break;
}

draw_sprite_ext(spr, 0, joint.x, joint.y, sca, sca*flip, angle, image_blend, image_alpha);