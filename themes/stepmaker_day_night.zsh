#! /bin/zsh

# /home/desbeers/Documents/GnomeSTEP/themes/stepmaker_day_night.zsh

theme=${$(gsettings get org.gnome.desktop.interface gtk-theme)}
wmaker="$HOME/GNUstep/Library/WindowMaker/Themes/"

if [[ $theme == "'STEPmaker'" ]]; then
  print "Switch to dark"
  gsettings set org.gnome.desktop.interface gtk-theme STEPmakerDARK
  setstyle $wmaker/STEPmakerDARK.themed
else
  print "Switch to light"
  gsettings set org.gnome.desktop.interface gtk-theme STEPmaker
  setstyle $wmaker/STEPmaker.themed
fi