xrdb -merge $HOME/.Xresources
picom &
dunst &
dwmblocks &

# Alternative (set last used background)
source ~/.fehbg

exec startdwm
