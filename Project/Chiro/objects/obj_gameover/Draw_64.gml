
draw_self();

if (menu_option != op.none)
{
    var x1;
    var x2;
    var y1 = y+304;
    var y2 = y+402;
    
    switch(menu_option)
    {
        case go.again:
            x1 = x+64;
            x2 = x+284;
        break;
        
        case go.menu:
            x1 = x+324;
            x2 = x+540;
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
    
    draw_set_color(c_white);
    draw_set_alpha(1);
}
    