var type = argument0;
var section = argument1;
var total = argument2;

var px;
var py;
var dir;

var torso_len = 400;
var extremity_len = 300;

if (type == total-1)
    type = typ.last;
else if (type == 0)
    type = typ.first;



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
                px = irandom_range(0, room_width)
                py = irandom_range(0, room_height)
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
            
            case typ.last:
                dir = irandom_range(90, 180);
                px = global.pos_top_x + lengthdir_x(torso_len, dir);
                py = global.pos_top_y + lengthdir_y(torso_len, dir);
            break;
            
            default:
                px = irandom_range(0, room_width)
                py = irandom_range(0, room_height)
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
            
            case typ.last:
                dir = irandom_range(0, 90);
                px = global.pos_top_x + lengthdir_x(torso_len, dir);
                py = global.pos_top_y + lengthdir_y(torso_len, dir);
            break;
            
            default:
                px = irandom_range(0, room_width)
                py = irandom_range(0, room_height)
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
            
            case typ.last:
                dir = irandom_range(180, 270);
                px = global.pos_bot_x + lengthdir_x(torso_len, dir);
                py = global.pos_bot_y + lengthdir_y(torso_len, dir);
            break;
            
            default:
                px = irandom_range(0, room_width)
                py = irandom_range(0, room_height)
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
            
            case typ.last:
                dir = irandom_range(270, 360);
                px = global.pos_bot_x + lengthdir_x(torso_len, dir);
                py = global.pos_bot_y + lengthdir_y(torso_len, dir);
            break;
            
            default:
                px = irandom_range(0, room_width)
                py = irandom_range(0, room_height)
            break;
        }
    break;
    
    default:
        show_debug_message("ERROR: Trying to make a section that hasn't been coded in yet!");
        game_end();
    break;
}

var lol = instance_create_depth(px, py, depth, obj_joint);

lol.section = section;
lol.image_index = section;

return lol;