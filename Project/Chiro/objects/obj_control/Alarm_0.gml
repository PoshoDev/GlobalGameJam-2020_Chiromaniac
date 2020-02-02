
global.holup = false;
        
with (obj_face)
{
    if (global.goals_number < 2)
        skeleton_animation_set("idle_2");
    else
        skeleton_animation_set("idle");
}
    
goals_count();
