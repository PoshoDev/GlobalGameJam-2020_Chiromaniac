
if (type == typ.unset)
{
    if (parent != noone)
    {
        if (child != noone)
           type = typ.joint;
        else
            type = typ.last;
    }
    else
        type = typ.first;
}

if (parent != noone)
{
    sprite_index = sprite01;
    mask_index = sprite01;
    image_angle = point_direction(x, y, parent.x, parent.y);
    image_xscale = point_distance(x, y, parent.x, parent.y)/sprite_get_width(sprite_index);
    
}

if (anim_doing)
{
    anim_hsp = lerp(anim_hsp, (anim_x-x)*anim_spd, anim_t);
    anim_vsp = lerp(anim_vsp, (anim_y-y)*anim_spd, anim_t);
    
    x += anim_hsp;
    y += anim_vsp;
}
/*else
{
    if (type!=typ.last && type!=typ.first)
    {
        move_circular(x, y, 16, 2);
    }
}*/

if (!global.gameover)
    goals_check();
else
{
    if (type != typ.first)
    {
        var off = 100;
        x = irandom_range(xstart-off, xstart+off);
        y = irandom_range(ystart-off, ystart+off);
    }
}