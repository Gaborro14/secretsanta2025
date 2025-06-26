///draw_sprite_9slice(sprite,image,x,y,width,height,xscale,yscale,angle,color,alpha,9left,9top,9right,9bottom,9mode)

var sprite,image,dx,dy,width,height,xscale,yscale,angle,color,alpha,left,top,right,bottom,mode;

sprite=argument0
image=argument1
dx=argument2
dy=argument3
width=argument4
height=argument5
xscale=argument6
yscale=argument7
angle=argument8
color=argument9
alpha=argument10
left=argument11
top=argument12
right=argument13
bottom=argument14
mode=argument15

shader_pixel_set(unpack_shader(ps2_9slice))
texture_set_stage("rSampler",sprite_get_texture(sprite,image))
shader_pixel_uniform_f("rect",left,top,right,bottom)
shader_pixel_uniform_f("size",width/xscale,height/yscale,sprite_get_width(sprite),sprite_get_height(sprite))
shader_pixel_uniform_f("mode",mode)
    draw_rect(dx-0.5,dy-0.5,width,height,color,alpha,angle)
shader_pixel_reset()
