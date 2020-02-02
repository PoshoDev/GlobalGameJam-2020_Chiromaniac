
draw_self();

if (menu_option != op.none)
{
    var x1 = x+124;
    var x2 = x+620;
    var y1;
    var y2;
    
    switch(menu_option)
    {
        case op.start:
            y1 = y+162;
            y2 = y+300;
        break;
        
        case op.fullscreen:
            y1 = y+312;
            y2 = y+438;
        break;
        
        case op.credits:
            y1 = y+468;
            y2 = y+586;
        break;
        
        case op.ende:
            y1 = y+625;
            y2 = y+720;
        break;
    }
    
    var off = 16;
    var w = 4;
    draw_set_color(c_dkgray);
    
    repeat(3)
    {
        draw_line_width(x1+qr(), y1+qr(), x2+qr(), y1+qr(), w);
        draw_line_width(x1+qr(), y1+qr(), x1+qr(), y2+qr(), w);
        draw_line_width(x2+qr(), y1+qr(), x2+qr(), y2+qr(), w);
        draw_line_width(x1+qr(), y2+qr(), x2+qr(), y2+qr(), w);
    }
}

draw_sprite_ext(spr_title, 0, room_width*0.7, room_height/2, 1, 1, image_angle, image_blend, image_alpha);
