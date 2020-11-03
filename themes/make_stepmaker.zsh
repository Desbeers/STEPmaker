#! /bin/zsh

if [ ! "$(which sassc 2> /dev/null)" ]; then
   echo sassc needs to be installed to generate the css.
   exit 1
fi

echo Generating the css...
# GTK css
sassc -M -t expanded gtktheme/gtk-3-24-stepmaker/gtk.scss build/gtk/STEPmaker/gtk-3.0/gtk.css
sassc -M -t expanded gtktheme/gtk-3-24-stepmaker/gtk-dark.scss build/gtk/STEPmaker/gtk-3.0/gtk-dark.css
sassc -M -t expanded gtktheme/gtk-3-24-stepmaker/gtk-bright.scss build/gtk/STEPmaker/gtk-3.0/gtk-bright.css
#sassc -M -t expanded shelltheme/sass/gnome-shell-solid.scss STEPmaker/gnome-shell/gnome-shell.css
# WindowMaker css
sassc -M -t expanded wmtheme/scss/wmtheme.scss wmtheme/generated_css/wmtheme.css
sassc -M -t expanded wmtheme/scss/wmtheme-dark.scss wmtheme/generated_css/wmtheme-dark.css
sassc -M -t expanded wmtheme/scss/wmtheme-bright.scss wmtheme/generated_css/wmtheme-bright.css

gtk="$HOME/.local/share/themes/STEPmaker/"
gtkdark="$HOME/.local/share/themes/STEPdarkmaker/"
gtkbright="$HOME/.local/share/themes/STEPbrightmaker/"
wmaker="$HOME/GNUstep/Library/WindowMaker/Themes/"

mkdir -p $gtk
mkdir -p $gtkdark
mkdir -p $wmaker

rsync --recursive --update --delete build/gtk/STEPmaker/ $gtk
rsync --recursive --update $gtk $gtkdark
rm $gtkdark/gtk-3.0/gtk.css
mv $gtkdark/gtk-3.0/gtk-dark.css $gtkdark/gtk-3.0/gtk.css
rsync --recursive --update $gtk $gtkbright
rm $gtkbright/gtk-3.0/gtk.css
mv $gtkbright/gtk-3.0/gtk-bright.css $gtkbright/gtk-3.0/gtk.css

echo Refresh GTK theme

theme=${$(gsettings get org.gnome.desktop.interface gtk-theme)}
gsettings set org.gnome.desktop.interface gtk-theme Adwaita
gsettings set org.gnome.desktop.interface gtk-theme $theme

echo Make the Window Maker themes...

. wmtheme/wmtheme.zsh
. wmtheme/wmtheme-dark.zsh
. wmtheme/wmtheme-bright.zsh

rsync --recursive --update --delete build/windowmaker/STEPmaker.themed/ $wmaker/STEPmaker.themed
rsync --recursive --update --delete build/windowmaker/STEPdarkmaker.themed/ $wmaker/STEPdarkmaker.themed
rsync --recursive --update --delete build/windowmaker/STEPbrightmaker.themed/ $wmaker/STEPbrightmaker.themed

echo Refresh Window Maker theme...

if [[ $theme == "'STEPmaker'" ]]; then
  setstyle build/windowmaker/STEPmaker.themed
elif [[ $theme == "'STEPdarkmaker'" ]]; then
  setstyle build/windowmaker/STEPdarkmaker.themed
else
  setstyle build/windowmaker/STEPbrightmaker.themed
fi

echo Copy STEPmaker icon theme...

rsync --recursive --update --delete icontheme/STEPmaker/ $HOME/.local/share/icons/STEPmaker/
