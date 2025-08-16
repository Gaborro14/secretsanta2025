#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed=0
alpha_reduction=0.1
xscale_increase=0
yscale_increase=0
additive_blending=0
d3d_fog_color=-1
follow_scale_sign=1
anim_end_destroy=0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha-=alpha_reduction

image_xscale+=xscale_increase*(sign(image_xscale)*follow_scale_sign)
image_yscale+=yscale_increase*(sign(image_yscale)*follow_scale_sign)

if (image_alpha<=0) instance_destroy()
#define Other_7
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (anim_end_destroy) instance_destroy()
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (d3d_fog_color!=-1) d3d_set_fog(1,d3d_fog_color,0,0)

if (additive_blending) {
    draw_set_blend_mode(bm_add)
    draw_self()
    draw_reset()
} else draw_self()

if (d3d_fog_color!=-1) d3d_set_fog(0,0,0,0)
