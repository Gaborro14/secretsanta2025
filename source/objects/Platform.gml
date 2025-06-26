#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
path=noone
path_action=path_action_stop
path_absolute=true
path_speed=0

snap="yuuutu"
snap_type=0

destroy_time=0
destroy_timer=0
primed=false

phase=false

hdeficit=0

t=-1
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
var moveplayer;moveplayer=0

if (path_index!=-1 && path_speed!=0) {
    get_path_speed()
    moveplayer=1
} else if (hspeed!=0 || vspeed!=0) {
    if (!phase) {
        if (hspeed!=0) if (!place_free(x+hspeed,y)) hspeed=-hspeed
        if (vspeed!=0) if (!place_free(x,y+vspeed)) vspeed=-vspeed
    }
    moveplayer=1
}

if (moveplayer) {
    //due to player's rounding, it's impossible to move the player only part of a pixel
    //so we store and make use of deficit counters
    var hmove;
    hdeficit+=hspeed
    hmove=round(hdeficit)
    hdeficit-=hmove
    with (Player) if (instance_place(x,y+2*vflip,other.id)) {
        move_player(x+hmove,y+other.vspeed,1)
    }
}

if (destroy_time) {
    if (!destroy_timer) {
        if (instance_place(x,y+2,Player) or instance_place(x,y-2,Player)) {
            primed=1
            image_blend=$4040ff
        } else {
            if (primed) {
                destroy_timer=destroy_time
                sound_play_auto("sndPlatformDestroy")
            }
        }
    } else {
        destroy_timer-=1
        if (destroy_timer==0) instance_destroy()
    }
}
#define Collision_BulletBlock
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=113
applies_to=self
invert=0
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=114
applies_to=self
invert=0
*/
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//field snap: enum("yuuutu","always","top","never")
//field visible: true
//field path: path
//field path_speed: number
//field path_action: enum(path_action_continue,path_action_restart,path_action_reverse,path_action_stop)
//field path_absolute: false
//field phase: false - lets the platform go through blocks
//field hspeed: number
//field vspeed: number
//field destroy_time: number - frames to destroy platform after player walks off

if (snap=="yuuutu") snap_type=0
if (snap=="always") snap_type=1
if (snap=="top") snap_type=2
if (snap=="never") snap_type=3

if (path!=noone) {
    path_start(path,path_speed,path_action,path_absolute)
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (sprite_index=sprDynamicPlatform && global.platform_9slice) {
    if (image_xscale==1 && image_yscale==1) {
        draw_self()
    } else {
        //i feel like renex has better things to do with their time than make an
        //auto platform script that only like, 2 people will use for practical uses
        draw_sprite_9slice(sprPlatform9slice,0,x,y,sprite_width,sprite_height,1,1,image_angle,image_blend,image_alpha,16,16,32,32)
    }
} else if (sprite_index!=-1) draw_self()
