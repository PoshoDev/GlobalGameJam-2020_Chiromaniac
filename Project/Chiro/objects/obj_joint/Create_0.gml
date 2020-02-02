
enum sec { torso, arm_l, arm_r, leg_l, leg_r, LENGTH};
enum typ { first, second, joint, last, unset};

image_speed = 0;

// Animation Initials
anim_doing = false;
anim_x = x;
anim_y = y;
anim_hsp = 0;
anim_vsp = 0;
anim_spd = 0.5;
anim_t = 0.2;

goal_dist = -1;
