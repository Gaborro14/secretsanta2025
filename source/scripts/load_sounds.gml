//funny bass boosted mode
if (global.iwbtg_sound_mode) {
    global.gain=1
    sound_effect_options(sound_kind_effect(0,se_gargle),0,0.5)
    sound_effect_options(sound_kind_effect(1,se_gargle),0,0.5)
    sound_effect_options(sound_kind_effect(3,se_gargle),0,0.5)
}

sound_global_volume(global.gain)

sound_dir=global.datadir+"sounds\"
music_dir=global.datadir+"music\"
avoid_dir=music_dir+"avoidance\"

//search for sound packs
for (file=file_find_first(global.datadir+"*.wasd",0);file!="";file=file_find_next()) {
    sound_add_pack(global.datadir+file)
} file_find_close()
for (file=file_find_first(sound_dir+"*.wasd",0);file!="";file=file_find_next()) {
    sound_add_pack(sound_dir+file)
} file_find_close()

//search sounds folder for subfolders
c=1 folders[0]=sound_dir+""
for (file=file_find_first(folders[0]+"*",fa_directory);file!="";file=file_find_next()) {
    if (directory_exists(folders[0]+file) && file!="." && file!="..") {
        folders[c]=folders[0]+file
        c+=1
    }
} file_find_close()

//load sfx
repeat (c) {c-=1
    //sfx (uncompressed, multi instance)
    sound_add_directory(folders[c],".wav",0,1)
    //compressed sfx (decompress on load)
    sound_add_directory(folders[c],".ogg",3,2)
    sound_add_directory(folders[c],".mp3",3,2)
}

//search music folder for subfolders
c=1 folders[0]=music_dir
for (file=file_find_first(folders[0]+"*",fa_directory);file!="";file=file_find_next()) {
    if (directory_exists(folders[0]+file) && file!="." && file!=".." && file!="avoidance") {
        folders[c]=folders[0]+file
        c+=1
    }
} file_find_close()

//setup music extensions to search
music_extensions[ 0]=".ogg"
music_extensions[ 1]=".mp3"
music_extensions[ 2]=".mod"
music_extensions[ 3]=".s3m"
music_extensions[ 4]=".it"
music_extensions[ 5]=".xm"
music_extensions[ 6]=".mid"
music_extensions[ 7]=".midi"
music_extensions[ 8]=".wma"
music_extensions[ 9]=".aif"
music_extensions[10]=".flac"
//note that we do not load wav from the music folder on purpose
music_count=11

//load music
repeat (c) {c-=1
    //music (compressed, streamed, single instance)
    i=0 repeat (music_count) {
        sound_add_directory(folders[c],music_extensions[i],1,1)
    i+=1}
}

//load avoidance folder as double streams
i=0 repeat (music_count) {
    sound_add_directory_ext(avoid_dir,music_extensions[i],1,1,"layer1_")
    sound_add_directory_ext(avoid_dir,music_extensions[i],1,1,"layer2_")
i+=1}

//load some extra data to setup music
custom_music_effects()
custom_sound_properties()
