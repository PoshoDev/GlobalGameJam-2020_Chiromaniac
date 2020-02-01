
if (charging)
{
    if (colliding)
        draw_set_color(c_red);
        
    draw_line(charge_x, charge_y, to_x, to_y);
    
    draw_set_color(c_white);
}
