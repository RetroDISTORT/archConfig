#!/bin/bash
echo "Starting setup..."
echo "> Setting up emacs..."
echo ">> Copying .emacs"
cp ./files/.emacs ~/
cp ./files/settings.org ~/.emacs.d
echo "> Setting up bash"
echo ">> Copying .bashrc"
cp ./files/.bashrc ~/
echo ">> Copying .bashrc"
cp ./files/aliasrc ~/.config/
echo ">> Sourcing bash"
source ~/.bashrc
echo "> Setting up picom"
echo ">> Copying picom.conf"
sudo cp ./files/picom.conf /etc/xdg/
echo "> Setting up i3"
echo ">> Copying i3 config"
cp ./files/i3/config ~/.config/i3/
i3-msg reload
i3-msg restart
echo "DONE!"
