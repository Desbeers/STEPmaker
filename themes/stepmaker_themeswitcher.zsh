#! /bin/zsh

theme=${$(gsettings get org.gnome.desktop.interface gtk-theme)}
wmaker="$HOME/GNUstep/Library/WindowMaker/Themes/"

if [[ $theme == "'STEPmaker'" ]]; then
  print "Switch to dark"
  notify-send "STEPmaker" "Switched to dark theme"
  gsettings set org.gnome.desktop.interface gtk-theme STEPdarkmaker
  setstyle $wmaker/STEPdarkmaker.themed
elif [[ $theme == "'STEPdarkmaker'" ]]; then
  notify-send "STEPmaker" "Switched to bright theme"
  gsettings set org.gnome.desktop.interface gtk-theme STEPbrightmaker
  setstyle $wmaker/STEPbrightmaker.themed
else
  notify-send "STEPmaker" "Switched to default theme"
  gsettings set org.gnome.desktop.interface gtk-theme STEPmaker
  setstyle $wmaker/STEPmaker.themed
fi
