/// @description // Clock

global.gameover = true;

with (obj_face)
    skeleton_animation_set("scream_3");

play(snd.long);

alarm[3] = room_speed;
