export PATH="$PATH:$(find ~/.local/bin -type d | paste -sd ':' -)"

export EDITOR=nvim
export TERMINAL=alacritty
export TERMINAL_PROG=alacritty
export BROWSER=librewolf

export QT_QPA_PLATFORMTHEME=qt6ct

# Devices
export BT_SPEAKER=F2:9F:2D:5F:BD:E5

# autostart X
if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
  exec startx
fi
