#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi
dunst &
picom &
exec dwm & wmpid=$!

./.config/scripts/setmonitors split &
./.config/scripts/autosuspend &

wait $wmpid
