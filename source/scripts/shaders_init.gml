global.lighting_vshader=unpack_shader(vs2_shadow)
global.lighting_pshader=unpack_shader(ps3_light)
global.lighting_blur_pshader=unpack_shader(ps2_blur)

global.snow_model=d3d_model_create()
d3d_model_primitive_begin(global.snow_model,pr_pointlist)
repeat (1000) d3d_model_vertex(global.snow_model,irandom(200),irandom(200),random(1))
d3d_model_primitive_end(global.snow_model)
d3d_model_bake(global.snow_model)

vertex_format_begin()
    //slot 0
    vertex_format_add_position(0)
    vertex_format_add_color(0)
    //slot 1
    vertex_format_add_position(1) //instance position
    vertex_format_add_custom(vf_type_float4,vf_usage_texcoord,1)   //instance transform
global.indexlight_format=vertex_format_end()

buffer=buffer_create()
vertex_helper_poscol(buffer, 0,0,0, 0,1)
vertex_helper_poscol(buffer, 1,0,0, $ff,0)
vertex_helper_poscol(buffer, 1,0,0, $ff,1)
vertex_helper_poscol(buffer, 1,1,0, $ff00ff,0)
vertex_helper_poscol(buffer, 1,1,0, $ff00ff,1)
vertex_helper_poscol(buffer, 0,1,0, $ff0000,0)
vertex_helper_poscol(buffer, 0,1,0, $ff0000,1)
vertex_helper_poscol(buffer, 0,0,0, 0,0)
vertex_helper_poscol(buffer, 0,0,0, 0,1)
vertex_helper_poscol(buffer, 0,0,0, 0,0)
vertex_helper_poscol(buffer, 1,0,0, $ff,0)
vertex_helper_poscol(buffer, 0,1,0, $ff0000,0)
vertex_helper_poscol(buffer, 1,1,0, $ff00ff,0)
global.indexlight_vertex_buffer=vertex_buffer_create(buffer,global.indexlight_format,0)
buffer_clear(buffer)

buffer_write_u16(buffer,0)
buffer_write_u16(buffer,1)
buffer_write_u16(buffer,2)
buffer_write_u16(buffer,3)
buffer_write_u16(buffer,4)
buffer_write_u16(buffer,5)
buffer_write_u16(buffer,6)
buffer_write_u16(buffer,7)
buffer_write_u16(buffer,0)
buffer_write_u16(buffer,7)
buffer_write_u16(buffer,1)
buffer_write_u16(buffer,5)
buffer_write_u16(buffer,3)
global.indexlight_index_buffer=index_buffer_create(buffer,ib_format_16)
buffer_clear(buffer)

global.indexlight_buffer=buffer
