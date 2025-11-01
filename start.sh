#!/usr/bin/env bash

# start night light
wl-gammarelay-rs run &

#initializing wallpaper daemon
swww-daemon &&

# you can install this by adding
# pkgs.networkmanagerapplet to your packages
nm-applet --indicator &

# the bar
waybar &

# mako
mako &

sleep 2

# set temperature
busctl --user set-property rs.wl-gammarelay / rs.wl.gammarelay Temperature q 1200 &

sleep 1

# set wallpaper
sww img ~/Wallpapers/mountain-village.png &
