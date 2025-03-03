//we can't intercept the projection before backgrounds are drawn,
//so instead we disable them and use the BackgroundDaemon to draw them correctly

with (BackgroundDaemon) {
   if (!on) {
        on=1
        for (i=0;i<8;i+=1) {
            bg_visible[i]=background_visible[i]
            background_visible[i]=0
        }
        bg_showcolor=background_showcolor
        background_showcolor=0
    }
}

//we also make sure all system objects responsible for screen composition are in the right place
with (Ortho) depth=10000002
with (World) depth=-10000000
with (global.screen_manager) depth=-10000001
