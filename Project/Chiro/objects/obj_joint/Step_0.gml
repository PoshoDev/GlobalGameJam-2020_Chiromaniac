
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