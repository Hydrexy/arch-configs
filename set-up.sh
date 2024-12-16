#!/bin/zsh

dir=$(dirname "$(realpath"$0")")

suod cp -ru "$dir/etc/*" /etc

sudo cp -ru "$dir/root/*" /root

sudo cp -ru "$dir/skel/*" /etc/skel

sudo cp -ru "$dir/usr/share/konsole/*" /usr/share/konsole/

sudo cp -ru "$dir/usr/share/vim/vim91/*" /usr/share/vim/vim91/
