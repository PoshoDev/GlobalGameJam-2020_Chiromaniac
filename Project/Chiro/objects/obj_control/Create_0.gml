
randomize();

global.pos_top_x = room_width/2;
global.pos_top_y = room_height/2-128;
global.pos_bot_x = room_width/2;
global.pos_bot_y = room_height/2+200-128;

// Bones

var minimum = 64;
global.total = global.joint_number;

for (var i=1; i<sec.LENGTH; i++)
{
    var par = noone;
    
    if (i == sec.torso)
        var tot = 2;
    else
        var tot = global.total;
        
    for (j=0; j<tot; j++)
    {
        show_debug_message("Printing "+string(j)+"-"+string(i));
        var hol = joint_make(j, i, tot);
        
        //global.sections[i][j] = hol;
        
        hol.type = typ.unset;
        hol.parent = par;
        hol.child = noone;
        
        if (hol.parent != noone)
            hol.parent.child = hol;
            
        par = hol;
    }
}

instance_create_depth(global.pos_top_x, global.pos_top_y, depth+1, obj_face);


// Target Scores
for (var i=1; i<=4; i++)
    global.goal[i] = 9999;


// Initials
charging = false;
charge_max = 256;
charge_x = -1;
charge_y = -1;
to_x = -1;
to_y = -1;
colliding = false;
strength = -1;
coords[0] = -1;
coords[1] = -1;

lel = noone;

global.holup = false;

// Cameras
zoom_level = 1;

//Get the starting view size to be used for interpolation later
default_zoom_width = camera_get_view_width(view_camera[0]);
default_zoom_height = camera_get_view_height(view_camera[0]);


// Delta
global.delta = 1;
//delta_update();
timer_set(2, 30);

global.goals_number = 0;
global.goals_value = 15;
global.okaying = false;
global.ending = false;
global.ending_val = 0;
global.gameover = false;
global.fade = -1;

global.font = font_add_sprite_ext(spr_font, "0123456789", true, 2);

fade = 1;
doing = 0;

say = false;

if (!audio_is_playing(snd_calm))
    audio_play_sound(snd_calm, irandom_range(0, 99), true);
