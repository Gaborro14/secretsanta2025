//snap-in for maker vines toggle

switch (argument0) {
    case opt_inpause: {
        return true
    }break
    case opt_step:{
        h=key_jump(vi_pressed)+macro_leftright(vi_pressed)
        if (h!=0) {
            //option ticked/changed
            sound_play_option("sndDJump")
            settings("makervine",!settings("makervine"))
        }
        if (settings("makervine")) sprite=sprPlayerRunning
        else sprite=sprPlayerRunningOld
        image_speed=0.5*50/room_speed
    }break
    case opt_text: {
        return "Vine Jump Input"
    }break
    case opt_value: {
        return pick(settings("makervine"),"Dir. Key","Jump or Dir. Key")
    }break
    case opt_end:{
        sprite=sprPlayerIdle
        image_speed=0.2
    }break
}
