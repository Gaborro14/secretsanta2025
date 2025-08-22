if (!global.contact_saves) {
    with (SavePointParent) {
        if (instance_place(x,y,other.id)) {
            exit
        }
    }
}

if (!instance_exists(TeleKid)) {
    var ox,oy;
    ox=image_xscale oy=image_yscale
    image_xscale*=0.9 image_yscale*=0.9
    check=place_free(x+lengthdir_x(12*facing,sprite_angle),y+lengthdir_y(12*facing,sprite_angle))
    image_xscale=ox
    image_yscale=oy
    if (!check) exit
    sound_play_auto("sndTelekid")
    i=instance_create(x,y,TeleKid)
    i.direction+=sprite_angle

    trigger_broadcast(tr_playershoot)
}
