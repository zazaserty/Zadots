# Za.dots
Dotfiles which I use in gentoo.
They include my make.conf and polybar, rofi, etc.
They should work on any distro.
If you are going to use these dots and you are new to customizing you should read the repo's readme.

# Terminal
I use kitty with no edits whatsoever since the bash shell and the default colors that come with it are perfect for me honestly.

# Wallpaper
I got mine from wallhaven.cc, you might experience problems when downloading it from this repo since sometimes the quality of the image can be affected (negatively) just in case I will add a link to the website one here https://wallhaven.cc/w/72rxqo. The bspwmrc from my dots sets the wallpaper automatically but you will have to tell it where it is located, just search for the line that mentions "feh /path/to/wallpaper". 

# Make.conf
This is a file which is used in Gentoo systems and has to be placed under /etc/portage/make.conf. It controls how packages are compiled, how much they are optimized, how many resources (memory for example) are dedicated to portage (Gentoo's package manager), etc. Do not put this file under /etc/portage if you are not using a portage system because it's not going to do anything, and in case you are using a portage based distro you should consider making your own or tweaking mine (I just added it so that you guys have an example and so that I can have a backup). If you want to know more about this file watch Mental Outlaw's videos on this subject on Oddysee or Youtube.

# Window Manager
I use bspwm. It is quite easy to configure and the config file resides in ~/.config/bspwm/bspwmrc. If you are going to use my configuration file consider changing the line "setxkbmap es" since your keymap probably isn't es.

# Bar
The bar is made using polybar ofc. The configuration was taken from another github repo made by adi1090x (https://github.com/adi1090x),you can find it here: https://github.com/adi1090x. Inside bspwmrc you can change "/home/youruser/.config/launch.sh --shapes" to launch.sh --shades or whatever there are many themes available. Remember to set the paths to YOUR home directory.

# Rofi
The rofi theme is not included in the dotfiles since it comes with rofi. Just do Super+D (super is windows key) and launch the theme selector then select "blue" and do Alt+A.

# Keybinds
They are managed by sxhkd and the config has to reside in ~/.config/sxhkd/sxhkdrc. Some of these keybinds depend on scripts which have to be put inside ~/.config/bspwm/scripts/. Just cat sxhkd's config to know the keybinds.

# Recommendations
Make sure all config files are executable you can do this with "chmod +x file" this is because some programs will need this.

Check that the scripts needed for keybinds are executable too (obvious).

Never define ~/whatever/file to bspwm or sxhkd or any programd where to find a file, this is because most programs will get confused and will not translate "~/" to your home directory, instead do "/home/youruser/path/to/file".

If you use a firefox based browser there is a really nice theme that does well with our colorscheme https://addons.mozilla.org/en-US/firefox/addon/light-blue-theme/, but any blue theme will do. I also reccomend installing dark reader for your eyes sake https://darkreader.org/.

When tweaking your make.conf you might wanna add ccache functionality, I did not because it caused problems when building certains packages so be careful with that.

This will work on any distro but you might need to change some paths and the names for some tools might change (this is unlikely to happen just be aware of it).

Install dependencies:
  · Bash
  · Kitty
  · Feh
  · Polybar
  · Bspwm
  · Dash
  · Rofi
  · Sxhkd
  
And last but no least install flameshot to take screenshots easily, it is not required for this setup but it is a nice tool and already comes defined in my config (launch it with Super+Shift+S).

# Known issues
I am aware that the bar's power menu has weird white lines. This is due to a "recent" update in rofi's config syntax which the menu uses. It has an easy fix and you just have to change the config file, look it up on google (I will fix it, but I don't use that menu so idrc).
