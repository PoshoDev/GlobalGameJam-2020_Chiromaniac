
if (mouse_x>x+124 && mouse_x<x+620)
{
    if (mouse_y>y+162 && mouse_y<y+300)
        menu_option = op.start;
    else if (mouse_y>y+312 && mouse_y<y+438)
        menu_option = op.fullscreen;
    else if (mouse_y>y+468 && mouse_y<y+586)
        menu_option = op.credits;
    else if (mouse_y>y+625 && mouse_y<y+720)
        menu_option = op.ende;
    else
        menu_option = op.none;
}
else
    menu_option = op.none;

image_index = menu_option;

if (menu_option != menu_prev)
{
    play(snd.chose);
    menu_prev = menu_option;
}

if (mouse_check_button_pressed(mb_left))
{
    play(snd.select);
    
    switch(menu_option)
    {
        case op.start:
            doing = 1;
            play(snd.next);
            audio_stop_sound(snd_menu);
        break;
        
        case op.fullscreen:
            window_set_fullscreen(!window_get_fullscreen());
        break;
        
        case op.credits:
        
        break;
        
        case op.ende:
            game_end();
        break;
    }
}
