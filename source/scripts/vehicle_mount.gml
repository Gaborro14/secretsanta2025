///vehicle_mount(instance_id,[stay_visible])
//called in the vehicle object - enables the vehicle, mounts argument0
var plr;

//abort if other object isn't a Player
if (!object_other_is_child_of(Player)) exit
plr=argument[0]

//don't mount if player is dead
if (plr.dead) exit

//don't double-mount
with (SuperVehicle) if (active && passenger==plr) exit

if (argument_count>1) stay_visible=argument[1]

passenger=plr
event_trigger(tr_mount)
