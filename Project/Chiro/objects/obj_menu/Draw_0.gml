
draw_self();

if (mouse_x>x+124 && mouse_x<x+620)
{
    if (mouse_y>y+162 && mouse_y<y+300)
        menu_option = opt.start;
    else if (mouse_y>y+312 && mouse_y<y+438)
        menu_option = opt.fullscreen;
    else if (mouse_y>y+468 && mouse_y<y+586)
        menu_option = opt.credits;
    else if (mouse_y>y+625 && mouse_y<y+720)
        menu_option = opt.close;
    else
        menu_option = opt.none;
}

if (menu_option != opt.none)
{
    var x1 = x+124;
    var x2 = x+620;
    var y1;
    var y2;
    
    switch(menu_option)
    {
        case opt.start:
            y1 = y+162;
            y2 = y+300;
        break;
        
        case opt.start:
            y1 = y+312;
            y2 = y+438;
        break;
        
        case opt.start:
            y1 = y+468;
            y2 = y+586;
        break;
        
        case opt.start:
            y1 = y+625;
            y2 = y+720;
        break;
    }
    
    var off = 16;
    
    x1 += irandom_range(-off, off);
    x2 += irandom_range(-off, off);
    y1 += irandom_range(-off, off);
    y2 += irandom_range(-off, off);
    
    draw_line(x1, y1, x2, y1);
    draw_line(x1, y1, x1, y2);
    draw_line(x2, y1, x2, y2);
    draw_line(x1, y2, x2, y2);
}
    