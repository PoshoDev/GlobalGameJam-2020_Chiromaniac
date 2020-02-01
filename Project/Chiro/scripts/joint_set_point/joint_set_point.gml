var dmin = argument1;
var dmax = argument2;

if (argument0 != typ.last)
{
    if (argument0 == typ.second)
        var extra = false;
    else
        var extra = true;
    
    do
    {
        dir = irandom_range(dmin-(45*extra), dmax+(45*extra));
    }
    until (!extra || (dir>global.prev_dir+60 && dir<global.prev_dir+120) || (dir<global.prev_dir-60 && dir>global.prev_dir-120) )
    
    px = global.prev_x + lengthdir_x(extremity_len, dir);
    py = global.prev_y + lengthdir_y(extremity_len, dir);
}
else
{
    dir = irandom_range(dmin, dmax);
    
    px = global.prev_x + lengthdir_x(extremity_len, dir);
    py = global.prev_y + lengthdir_y(extremity_len, dir);
}