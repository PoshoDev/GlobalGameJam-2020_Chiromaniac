
switch (doing)
{
    case 0:
        if (fade > 0)
            fade -= 0.01;
    break;
    
    case 1:
        if (fade < 1)
            fade += 0.02;
        else
        {
            room_goto_next();
            global.joint_number = 3;
        }
}

draw_sprite_ext(spr_black, 0, 0, 0, room_width/2, room_height/2, 0, image_blend, fade);
    