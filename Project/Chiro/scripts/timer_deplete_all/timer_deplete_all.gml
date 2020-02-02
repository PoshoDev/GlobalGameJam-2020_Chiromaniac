var inactive = -100;

for (var i=0; i<array_length_1d(timers); i++)
{
    if (timers[i] > 0)
    {
        timers[i] -= global.delta;
    }
    else if (timers[i]<=0 && timers[i]>inactive)
    {
        timers[i] = inactive;
        event_perform(ev_alarm, i);
    }
}