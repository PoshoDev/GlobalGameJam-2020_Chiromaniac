
// Draw the sprites
if (false)
{
    var path = path_add();
    for(var i=0; i<global.total; i++)
    {
        var lal = instance_find(obj_joint, i)
        path_add_point(path, lal.x, lal.y, 0)
    }
    path_set_closed(path, false)
    
    draw_path_sprite(path, 0, 0, 64, sprite2, 0, 1, 1, image_blend, image_alpha, 64, false)
}

//
if (charging)
{
    if (colliding)
    {
        draw_set_color(c_orange)
        draw_line_width(charge_x, charge_y, coords[0], coords[1], 4);
        
        draw_set_color(c_red);
    }

    draw_line(charge_x, charge_y, to_x, to_y);
    
    draw_set_color(c_white);
}

if (keyboard_check_pressed(vk_space))
{
    lel = joint_find_nearest(mouse_x, mouse_y);
}

if (lel!=noone)
    draw_circle_color(lel.x, lel.y, 6, c_green, c_green, false);
