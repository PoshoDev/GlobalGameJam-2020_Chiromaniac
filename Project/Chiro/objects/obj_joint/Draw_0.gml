
if (sprite_index != -1)
    draw_self();

draw_circle(x, y, 4, false);

if (parent != noone)
{
    draw_line(x, y, parent.x, parent.y);
}


