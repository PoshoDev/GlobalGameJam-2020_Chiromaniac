
if (image_alpha < 1)
    image_alpha += 0.01;

if (device_mouse_y_to_gui(0)>y+304 && device_mouse_y_to_gui(0)<y+402)
{
    if (device_mouse_x_to_gui(0)>x+64 && device_mouse_x_to_gui(0)<x+284)
        menu_option = go.again;
    else if (device_mouse_x_to_gui(0)>x+324 && device_mouse_x_to_gui(0)<x+540)
        menu_option = go.menu;
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
        case go.again:
            global.joints = -1;
            room_restart();
            global.joint_number = 3;
        break;
        
        case go.menu:
            global.joints = -1;
            game_restart();
        break;
    }
}