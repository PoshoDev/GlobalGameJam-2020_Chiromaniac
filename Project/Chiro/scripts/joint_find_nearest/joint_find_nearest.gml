var px = argument0;
var py = argument1;

var hol = instance_nearest(px, py, obj_joint);

if (hol.type == typ.joint)
    return hol;
    
// Start Dumbassery
enum lk { index, distance, type };

for (var i=0; i<instance_number(obj_joint); i++)
{
    look[i, lk.index] = instance_find(obj_joint, i);
    look[i, lk.distance] = point_distance(px, py, look[i, lk.index].x, look[i, lk.index].y);
    look[i, lk.type] = look[i, lk.index].type;
}

var current = noone;
var smaller_than = 99999;

for(var i=0; i<instance_number(obj_joint); i++)
{
    if (look[i, lk.type]==typ.joint && look[i, lk.distance]<smaller_than)
    {
        current = look[i, lk.index];
        smaller_than = look[i, lk.distance];
    }
}

return current;

/*var bigger_than = point_distance(px, py, hol.x, hol.y);
var smaller_than = 99999;
var check;
var current;

for (var i=0; i<instance_number(obj_joint); i++)
{
    check = instance_find(obj_joint, i);
    
    var dist = point_distance(px, py, check.x, check.y);
    
    if (dist>bigger_than && dist<smaller_than)
    {
        if (check.type == typ.joint)
        {
            current = check;
            smaller_than = dist;
        }
        else
        {
            bigger_than = dist;//
            i = -1;
        }
    }
}

return current;*/