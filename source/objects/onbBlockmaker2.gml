#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
angle = 0;
spd = 4;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
var s;
s = instance_create(x, y, onbBlockhmvd);
s.direction = 0 + angle;
s.speed = spd;

s = instance_create(x, y, onbBlockhmvd);
s.direction = 90 + angle;
s.speed = spd;

s = instance_create(x, y, onbBlockhmvd);
s.direction = 180 + angle;
s.speed = spd;

s = instance_create(x, y, onbBlockhmvd);
s.direction = 270 + angle;
s.speed = spd;

angle -= 0.25;
