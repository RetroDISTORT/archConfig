#!/bin/bash
echo "Starting setup..."
echo "> Setting up emacs..."
echo ">> Copying .emacs"
mkdir -p ~/.emacs.d
cp ./files/.emacs ~/.emacs.d/init.el
cp ./files/settings.org ~/.emacs.d/
echo "> Setting up bash"
echo ">> Copying .bashrc"
cp ./files/.bashrc ~/
echo ">> Copying aliasrc"
cp ./files/aliasrc ~/.config/
echo ">> Sourcing bash (THIS MAY FAIL)"
source ~/.bashrc
echo "> Setting up picom"
echo ">> Copying picom.conf"
sudo cp ./files/picom.conf /etc/xdg/
echo "> Setting up i3"
echo ">> Copying i3 config"
cp ./files/i3/config ~/.config/i3/
echo "> Setting up URxvt"
echo ">> Copying .Xresources config"
cp ./files/.Xresources ~/
echo ">> Updating URxvt (Updates will be visible when oppening a new terminal)"
xrdb -merge ~/.Xresources

i3-msg reload
i3-msg restart
echo "DONE!"
