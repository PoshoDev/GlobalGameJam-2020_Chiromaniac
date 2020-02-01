
if (charging)
{
    if (colliding)
        draw_set_color(c_red);
        
    draw_line(charge_x, charge_y, to_x, to_y);
    
    draw_set_color(c_white);
}

if (keyboard_check_pressed(vk_space))
{
    lel = joint_find_nearest(mouse_x, mouse_y);
}

if (lel!=noone)
    draw_circle_color(lel.x, lel.y, 6, c_green, c_green, false);
/*for (var n=0; n<instance_number(obj_joint); n++)
{
    var touch = instance_nth_nearest(mouse_x, mouse_y, obj_joint, n);
    
    draw_set_color(c_green)
    draw_text(touch.x, touch.y-16, n);
    draw_set_color(c_white)
}*/
