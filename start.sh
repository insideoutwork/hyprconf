#!/usr/bin/env bash

# start night light
wl-gammarelay-rs run &

# run at 1300k
busctl --user set-property rs.wl-gammarelay / rs.wl.gammarelay Temperature q 1300 &

#initializing wallpaper daemon
swww-daemon &
# setting wallpaper
swww img ~/Wallpapers/mountain-village.png &

# you can install this by adding
# pkgs.networkmanagerapplet to your packages
nm-applet --indicator &

# the bar
waybar &

# mako
mako
