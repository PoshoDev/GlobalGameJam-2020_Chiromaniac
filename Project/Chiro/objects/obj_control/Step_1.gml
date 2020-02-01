
if (keyboard_check(ord("R")))
    game_restart();
    
if (mouse_check_button_pressed(mb_left))
{
    charging = true;
    charge_x = mouse_x;
    charge_y = mouse_y;
}
else if (mouse_check_button_released(mb_left))
{
    charging = false;
    
    if (colliding)
    {
        //var touch = instance_nearest(to_x, to_y, obj_joint);
        for (var n=0; n<instance_number(obj_joint); n++)
        {
            var touch = joint_find_nearest(coords[0], coords[1]);
            
            if (touch.type == typ.joint)
                break;
        }
        
        touch.anim_x += lengthdir_x(strength, direction);
        touch.anim_y += lengthdir_y(strength, direction);
        
        touch.anim_doing = true;
        
        global.holup = true;
    
        with (obj_face)
            skeleton_animation_set("scream_1");
        
        alarm[0] = room_speed;
    }
}


if (charging)
{
    direction = point_direction(charge_x, charge_y, mouse_x, mouse_y);
    strength = point_distance(charge_x, charge_y, mouse_x, mouse_y);
    
    if (strength > charge_max)
    {
        to_x = charge_x + lengthdir_x(charge_max, direction);
        to_y = charge_y + lengthdir_y(charge_max, direction);
    }
    else
    {
        to_x = mouse_x;
        to_y = mouse_y;
    }
    
    if (collision_line(charge_x, charge_y, to_x, to_y, obj_joint, true, true) != noone)
    {
        colliding = true;
        coords = raycast_coord(charge_x, charge_y, to_x, to_y, obj_joint, 1);
    }
    else
        colliding = false;
}


if(keyboard_check_pressed(vk_space))
{
     camera_set_view_size(view_camera[0],room_width/2,room_height/2);
}
