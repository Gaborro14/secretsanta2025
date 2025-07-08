#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=425
*/
#define Trigger_Draw End
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
time=global.increment*2 mod 256

xx=floorto(view_xview,256)-time
yy=floorto(view_yview,256)-256+time

shader_snow()

u=xx repeat ceil(view_wview/256)+1 {
    v=yy repeat ceil(view_hview/256)+1 {
        shader_vertex_uniform_f("offset",u,v,-time/500,20)
        d3d_model_draw(global.snow_model,0,0,0,-1)
    v+=256}
u+=256}

shader_reset()
