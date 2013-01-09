#! /bin/sh

case $1 in
    us)
        echo us standard
        setxkbmap us
        ;;

    us-dvorak)
        echo us dvorak
        setxkbmap us dvorak
        ;;
        
    *)
        exit 1
        ;;
esac
#xmodmap -e 'remove lock = Caps_Lock' -e 'add shift = Caps_Lock' -e 'add mod3 = Menu'
