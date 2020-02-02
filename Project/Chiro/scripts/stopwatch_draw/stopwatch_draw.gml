if (doing!=0 && global.joint_number>3)
{
    var len = 164;
    var off = 32;
    
    var px = 1920 - len - off;
    var py = 1080 - len- off;
    
    draw_circle(px, py, len/2, false);
    draw_pie(px, py, timers[2], 30*room_speed, c_gray, len/2, 1);
    
    draw_sprite_ext(spr_stopwatch, 0, px, py, 0.3, 0.3, 0, image_blend, 1);
    
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_font(global.font);
    
    var time = seconds(timers[2]);
    
    if (time <= 0)
        time = 0;
        
    draw_text_transformed(px+32, py+48, time, 0.6, 0.6, 0);
    
    draw_set_color(c_white);
}
else
    timer_set(2, 30);