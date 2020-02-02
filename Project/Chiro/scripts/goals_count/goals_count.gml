var count = 0;

for(var i=1; i<=4; i++)
    if (global.goal[i] < global.goals_value)
        count++;
     
if (count > global.goals_number)
{
    global.goals_number = count;
    global.okaying = true;
    
    
    if (count != 4)
    {
        play(snd.good);
        alarm[1] = 45;
    }
    else
    {
        audio_stop_sound(snd_calm);
        play(snd.finish);
        alarm[1] = 120;
        global.ending = true;
    }
}
else if (count < global.goals_number)
{
    global.goals_number = count;
    global.okaying = -1;
    
    play(snd.error);
    alarm[1] = 45;
}