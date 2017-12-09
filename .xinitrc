/usr/bin/dunst > /dev/null 2>&1 &
/home/jan/dev/dwm/titlebar.sh &
xbindkeys &
setxkbmap -option ctrl:nocaps &
xset r rate 250 25 &
numlockx &
export QT_STYLE_OVERRIDE=breeze
export _JAVA_AWT_WM_NONREPARENTING=1
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on'

#exec dwm

while true; do
    dwm >/dev/null 2>&1
    #awesome >/dev/null 2>&1
    #openbox-session >/dev/null 2>&1
done
