#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=605
invert=0
arg0=will move when stood on
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=604
invert=0
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
active=false
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (!active) if (distance_to_object(Player)<2) {
    active=true
    hspeed=hsp
    vspeed=vsp
}
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=604
invert=0
*/
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()

hsp=hspeed
vsp=vspeed
speed=0
