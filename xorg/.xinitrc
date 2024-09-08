#!/bin/bash
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap
picom &
feh ~/Pictures/wallpapers/ --recursive --randomize --bg-fill &
~/Documents/scripts/statusbar.sh &

exec dwm
