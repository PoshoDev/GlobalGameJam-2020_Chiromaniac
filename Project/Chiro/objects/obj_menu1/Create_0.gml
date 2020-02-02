/// @description 

enum op { none, start, fullscreen, credits, ende };

menu_option = op.none;
menu_prev = op.none;

image_speed = 0;

fade = 1;
doing = 0;

if (audio_is_playing(snd_calm))
    audio_stop_sound(snd_calm);
    
if (!audio_is_playing(snd_menu))
    audio_play_sound(snd_menu, irandom_range(0, 99), false);

add = 0;
title_y = 0;