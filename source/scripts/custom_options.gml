//list of all the game options
//you can copy the template and add your own options

add_option(opt_music_volume)
add_option(opt_sound_volume)
if (!global.disable_autopanvol) add_option(opt_sound_mode)
add_option(opt_pausesounds)
add_option(opt_screen_mode)
add_option(opt_screen_scale)
add_option(opt_fullscreen_filter)
add_option(opt_caption)
add_option(opt_screenshake)
add_option(opt_left_right)
add_option(opt_animation)
if (global.maker_vines) add_option(opt_makervine)
add_option(opt_celeste)
add_option(opt_blood_amount)
add_option(opt_blood_collision)

//option for saving valign
//add_option(opt_savevalign)

add_option(opt_rebind_keyboard)
add_option(opt_rebind_joystick)
