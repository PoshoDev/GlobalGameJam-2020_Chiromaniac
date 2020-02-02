
if (false)
{
    if (sprite_index != -1)
        draw_self();
    
    draw_circle(x, y, 4, false);
    
    if (type==typ.joint || type==typ.last)
        draw_line(x, y, parent.x, parent.y);
    
    switch(type)
    {
        case typ.first:     var str = "(first)";    break;
        case typ.second:    var str = "(second)";   break;
        case typ.joint:     var str = "(joint)";    break;
        case typ.last:      var str = "(last)";     break;
    }
    
    draw_text(x, y, str);
}

