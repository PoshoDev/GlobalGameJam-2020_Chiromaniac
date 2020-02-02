
// Draw the sprites
joints_draw();

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

draw_joints_debug();

if (keyboard_check_pressed(vk_space))
{
    lel = joint_find_nearest(mouse_x, mouse_y);
}

if (lel!=noone)
    draw_circle_color(lel.x, lel.y, 6, c_green, c_green, false);
