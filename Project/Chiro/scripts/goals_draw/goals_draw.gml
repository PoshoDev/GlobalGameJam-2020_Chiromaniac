if (!global.holup && global.goals_number<4)
    for(var i=1; i<=4; i++)
    {
        var path = path_add();
        var first = global.joints[i, 0];
        var last = global.joints[i, array_length_2d(global.joints, i)-1];
        
        path_add_point(path, first.x, first.y, 0);
        path_add_point(path, last.x, last.y, 0);
        path_set_closed(path, false);
        
        if (global.goal[i] < global.goals_value)
            var index = 1;
        else
            var index = 0;
            
        draw_path_sprite(path, 0, 0, 8, spr_goal_line, index, 1, 1, image_blend, 0.75, 1, true);
    }