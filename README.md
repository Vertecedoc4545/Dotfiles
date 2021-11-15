# Wellcome tho the NordicDragon(with Chadwm)
this dotfiles have to be modified for linux beacause this are dotfiles for FreeBsd, but are actually to similar so don't scare

### ALLERT!, I use Latinoamerican DVORAK keyboard so check first keybindings on chadwm/chadwm/config.h and change the keyboard layout on sys/etc/rc.conf  and on .dwm/autostart for the xkb layout

### ALERT!!!!!!!, Also at the moment of compiling dwm you will have problems with truetype2 and X11 libraryes on /usr/local/include/TrueType2  and /usr/local/include/X11 specifically with the #include<> of the files that are inside the subfolders for example /usr/local/include/TrueType2/config and for solve this you have to change the actual code of the libraries on the #include<> section, here an example

#include  <config/somo.h> -> #include <X11/config/somo.h>

#todo upload sys/usr/include libraries
in the folder sys/usr/local/include are the actual modified libraries, but not trust on this because could be not upgrated so first check the date of the commit where i uploaded those files before use them

## Estructure

- On the sys folder exit all the system wide configurations
    - sys/home/ are the .local/share folder
    - sys/etc = /etc
    - sys/usr/local/etc 
    - sys/usr/local/share for slim ([batik theme](https://www.deviantart.com/owl4ce/art/Floflo-Batik-SLiM-Themes-861519439)
    - sys/boot/ for loader.conf
- config fohder is for user .config
- chadwm folder is for the dwm config, needs zapcc as campiler, for change that change the CC variable on chadwm/chadwm/config.mk for example to gcc or cc and is installed with `doas/sudo make install` on the folder chadwmchadwm 
- wall is the folder for my animated wallpapers, (needs [original xwinwrap](https://github.com/mmhobi7/xwinwrap) and if you are on *\*bsd* you have to campile from saurce **gifscale**, [gifscicle compileing instructions](https://github.com/kohler/gifsicle) [(gifscile source tarball, not do git clone) (also do ./configure --prefix=/usr/local/ on \*bsd)](http://www.lcdf.org/gifsicle/)
    - For change the animated wallpaper change the file on .dwm/autostart for example to $(find /home/usr/wall/anim -type f | sort | shuf | head -n 1) for a rondom wallpaper
    - For an static wallpaper comment the line of the xwinwrap command on the .dwm/autostart and put something with feh or nitrogen
        - my static wallpapers are on config/wallpaper
#### NOTES:
+ also campile and install from source the [janaburg's picom](https://github.com/jonaburg/picom)
- default shell is fish, not needed
    - for the dragon `neofetch --ascii ~/.config/neofetch/small_freebsd` or set an alias like `alias neofetch 'neofetch --ascii ~/.config/neofetch/small_freebsd'` for fish or `alias neofetch='neofetch --ascii ~/.config/neofetch/small_freebsd'` for posix compliant 
- for a correct login copy sys/usr/local/etc/X11/xinit(folder) to your systemwide xinit, for example for linux /usr/local/share/X11/ or to your user .xinitrc (for this solution you have to change the login command on sys/usr/local/etc/slim.conf to execute the lacation of the xinitrc file)
- for slim working you need bash installed or shange the init shell on sys/usr/local/etc/slim.conf on login\_command
- most part of my configs on sys/etc are only for intel processors, also you need to install some modules like acpi\_video for blacklight(on sys/etc/devd are deffined the keybindings for blaglight, intel only, you have a [guide here for non intel blacklight](https://www.davidschlachter.com/misc/freebsd-acpi_video-thinkpad-display-brightness)
- Useful Setup guides for freebsd are in [this post ](https://forums.freebsd.org/threads/how-to-setup-a-microphone-correctly-freebsd.82804/)
