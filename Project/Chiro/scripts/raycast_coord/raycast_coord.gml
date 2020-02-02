///raycast_coord(x1, y1, x2, y2, collision_object, quality)

var x1 =  argument0;
var y1 =  argument1;
var x2 =  argument2;
var y2 =  argument3;
var obj = argument4;
var qua = argument5; // 1 is most precise, but slowest

var found = false;
var dir = point_direction(x1, y1, x2, y2);

var xp = x1;
var yp = y1;


while (point_distance(x1, y1, x2, y2) > qua)
{
    if (collision_point(x1, y1, obj, true, true))
        break;
    
    xp = x1;
    yp = y1;
    
    x1 += lengthdir_x(qua, dir);
    y1 += lengthdir_y(qua, dir);
}

var pos;
pos[0] = xp;
pos[1] = yp;

return pos;