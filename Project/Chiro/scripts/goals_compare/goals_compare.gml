for (var i=1; i<array_height_2d(global.joints); i++)
{
    var sum = 0;
    
    for (var j=1; j<array_length_2d(global.joints, i)-1; j++)
        sum += global.joints[i, j].goal_dist;
        
    global.goal[i] = sum / (array_length_2d(global.joints, i)-2);
}