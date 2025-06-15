///inside_view([border])

if (!global.room_started) return false

var border;
border=0

if (argument_count) border=argument[0]


//workaround for WaterSurface
if (object_index==WaterSurface)
return bbox_right >= view_xview[0]
    && bbox_left < view_xview[0]+view_wview[0]
    && bbox_bottom+h >= view_yview[0]
    && bbox_top < view_yview[0]+view_hview[0]

//workaround for instances without a sprite
if (bbox_right-bbox_left+bbox_bottom-bbox_top == 0)
return x >= view_xview[0]-border
    && x < view_xview[0]+view_wview[0]+border
    && y >= view_yview[0]-border
    && y < view_yview[0]+view_hview[0]+border

return bbox_right >= view_xview[0]-border
    && bbox_left < view_xview[0]+view_wview[0]+border
    && bbox_bottom >= view_yview[0]-border
    && bbox_top < view_yview[0]+view_hview[0]+border
