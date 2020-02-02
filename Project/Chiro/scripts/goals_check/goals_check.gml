var first = global.joints[section, 0];
var last = global.joints[section, array_length_2d(global.joints, section)-1];

var x0 = x;
var y0 = y;
var x1 = first.x;
var y1 = first.y;
var x2 = last.x;
var y2 = last.y;

goal_dist = (abs(((y2-y1)*x0)-((x2-x1)*y0)+(x2*y1)-(y2*x1)))/(sqrt(power((y2-y1),2)+power((x2-x1),2)));