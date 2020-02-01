var type = argument0;
var section = argument1;
var total = argument2;

px = -1;
py = -1;
dir = -1;

torso_len = 150;
extremity_len = 100;

if (type == total-1)
    type = typ.last;
else if (type == 0)
    type = typ.first;
else if (type == 1)
    type = typ.second;



switch(section)
{
    case sec.torso:
        switch(type)
        {
            case typ.first:
                px = room_width/2;
                py = room_height/2;
                
                global.pos_top_x = px;
                global.pos_top_y = py;
            break;
            
            case typ.last:
                dir = 270//irandom_range(225, 315);
                px = room_width/2 + lengthdir_x(torso_len, dir);
                py = room_height/2 + lengthdir_y(torso_len, dir);
                
                global.pos_bot_x = px;
                global.pos_bot_y = py;
                global.dir = dir;
            break;
            
            default:
                px = irandom_range(global.pos_top_x-100, global.pos_top_x+100)
                py = irandom_range(global.pos_top_y+64, global.pos_top_y+64+100)
            break;
        }
    break;
    
    case sec.arm_l:
        switch(type)
        {
            case typ.first:
                px = global.pos_top_x;
                py = global.pos_top_y;
            break;
            
            default:
                joint_set_point(type, 180-60, 270-60);
            break;
        }
    break;
    
    case sec.arm_r:
        switch(type)
        {
            case typ.first:
                px = global.pos_top_x;
                py = global.pos_top_y;
            break;
            
            default:
                joint_set_point(type, 270+60, 360+60);
            break;
        }
    break;
    
    case sec.leg_l:
        switch(type)
        {
            case typ.first:
                px = global.pos_bot_x;
                py = global.pos_bot_y;
            break;
            
            default:
                joint_set_point(type, 180, 270);
            break;
        }
    break;
    
    case sec.leg_r:
        switch(type)
        {
            case typ.first:
                px = global.pos_bot_x;
                py = global.pos_bot_y;
            break;
            
            default:
                joint_set_point(type, 270, 360);
            break;
        }
    break;
    
    default:
        show_debug_message("ERROR: Trying to make a section that hasn't been coded in yet!");
        game_end();
    break;
}

global.prev_x = px;
global.prev_y = py;
global.prev_dir = dir;

var lol = instance_create_depth(px, py, depth+1, obj_joint);

lol.section = section;
lol.image_index = section;

return lol;