#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
on=0

user_draw_begin=1
user_draw_end=2
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
fix_backgrounds()
#define Other_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_perform(ev_other,ev_animation_end)
#define Other_7
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (on) {
    on=0
    for (i=0;i<8;i+=1) {
        background_visible[i]=bg_visible[i]
    }
    background_showcolor=bg_showcolor
}
#define Other_11
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///draw begin
var i;

if (bg_showcolor) {
    draw_clear(window_get_color())
    if (is_ingame()) draw_rect(0,0,room_width,room_height,background_color)
    else draw_clear(background_color)
}

with (all) if (visible) event_perform(ev_trigger,tr_draw_beneath)

for (i=0;i<8;i+=1) {
    if (bg_visible[i] && background_exists(background_index[i]) && !background_foreground[i]) {
        draw_background_tiled_extra(
            background_index[i],
            background_x[i],
            background_y[i],
            background_xscale[i],
            background_yscale[i],
            0,
            background_blend[i],
            background_alpha[i],
            !background_htiled[i],
            !background_vtiled[i]
        )
    }
}

with (all) if (visible) event_perform(ev_trigger,tr_draw_begin)
#define Other_12
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///draw end

with (all) if (visible) event_perform(ev_trigger,tr_draw_end)

for (i=0;i<8;i+=1) {
    if (bg_visible[i] && background_exists(background_index[i]) && background_foreground[i]) {
        draw_background_tiled_extra(
            background_index[i],
            background_x[i],
            background_y[i],
            background_xscale[i],
            background_yscale[i],
            0,
            background_blend[i],
            background_alpha[i],
            !background_htiled[i],
            !background_vtiled[i]
        )
    }
}

with (all) if (visible) event_perform(ev_trigger,tr_draw_above)
