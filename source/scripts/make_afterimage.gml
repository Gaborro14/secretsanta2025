///make_afterimage([initial_alpha],[alpha_reduction],[xscale_increase],[yscale_increase],[additive_blending],[anim_end_destroy],[d3d_fog_color])

var af;
af=instance_create(x,y,Afterimage)

af.sprite_index=sprite_index
af.image_index=image_index
af.image_angle=image_angle
af.image_xscale=image_xscale
af.image_yscale=image_yscale
af.image_blend=image_blend
af.depth=depth+0.1

if (argument_count>0) af.image_alpha=argument[0]
if (argument_count>1) af.alpha_reduction=argument[1]
if (argument_count>2) af.xscale_increase=argument[2]
if (argument_count>3) af.yscale_increase=argument[3]
if (argument_count>4) af.additive_blending=argument[4]
if (argument_count>5) af.anim_end_destroy=argument[5]
if (argument_count>6) af.d3d_fog_color=argument[6]

return af
