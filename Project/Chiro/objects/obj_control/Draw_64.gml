
stopwatch_draw();


// Fadings

if (global.ending)
{
    global.ending_val += 1 / 120;
    
    draw_sprite_ext(spr_black, 0, 0, 0, room_width/2, room_height/2, 0, image_blend, global.ending_val);
    
    draw_set_color(c_white);
    draw_set_alpha(1);
    
    if (global.ending_val > 1 && global.ending_val < 9999)
    {
        global.ending_val = 10000;
        alarm[4] = room_speed*1.5;
        say = true;
    }
}
else if (global.gameover && global.fade!=-1)
{
    if (global.fade < 0.75)
        global.fade += 0.01;
    else if (instance_number(obj_gameover) < 1)
        instance_create_depth(0, 0, depth-9999, obj_gameover);
    
    draw_sprite_ext(spr_black, 0, 0, 0, room_width/2, room_height/2, 0, image_blend, global.fade);
    
    draw_set_color(c_white);
    draw_set_alpha(1);
}


switch (doing)
{
    case 0:
        if (fade > 0)
            fade -= 0.02;
        else
        {
            doing++;
            
            if (global.joint_number > 3)
                play(snd.more);
        }
    break;
    
    case 2:
        if (fade < 1)
            fade += 0.02;
        else
        {
            room_goto_next();
            global.joint_number = 3;
        }
}

draw_sprite_ext(spr_black, 0, 0, 0, room_width/2, room_height/2, 0, image_blend, fade);

if (say)
{
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(c_white);
    draw_set_font(font0);
    draw_text_transformed(1920/2, 1080/2, "Thanks, doc!", 4, 4, 0);
}

