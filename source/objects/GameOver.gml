#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
x=global.GUIwidth div 2
y=global.GUIheight div 2
alarm[0]=40/dt
active=0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
active=1
#define Other_10
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///draw the iwbtg game over
draw_set_font(fntGameover)
draw_set_halign(1)
draw_text_transformed_color(x,y-105,"GAME OVER",4.5,4.5,0,image_blend,image_blend,image_blend,image_blend,image_alpha)
draw_text_color(x,y+45,"PRESS ´"+key_restart(vi_keyname)+"´ TO TRY AGAIN",image_blend,image_blend,image_blend,image_blend,image_alpha)
draw_set_halign(0)
draw_sprite_tiled_extra(sprDefaultGameOverLine,0,x-47*8,y+35,1,1,0,image_blend,image_alpha,94,1)
draw_set_font(fntFileSmall)
#define Trigger_Draw GUI
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (active) {
    //draw black outline
    color=image_blend
    image_blend=0

    x+=3 event_user(0) x-=3
    x-=3 event_user(0) x+=3
    y+=3 event_user(0) y-=3
    y-=3 event_user(0) y+=3

    x+=2 y+=2 event_user(0) x-=2 y-=2
    x-=2 y+=2 event_user(0) x+=2 y-=2
    x+=2 y-=2 event_user(0) x-=2 y+=2
    x-=2 y-=2 event_user(0) x+=2 y+=2

    image_alpha=0.5

    x+=2 y-=3 event_user(0) x-=2 y+=3
    x+=3 y-=2 event_user(0) x-=3 y+=2
    x+=3 y+=2 event_user(0) x-=3 y-=2
    x+=2 y+=3 event_user(0) x-=2 y-=3
    x-=2 y+=3 event_user(0) x+=2 y-=3
    x-=3 y+=2 event_user(0) x+=3 y-=2
    x-=3 y-=2 event_user(0) x+=3 y+=2
    x-=2 y-=3 event_user(0) x+=2 y+=3

    image_alpha=1
    image_blend=color

    //draw game over
    event_user(0)
}
