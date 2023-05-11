#/usr/bin/env sh

find $HOME -xtype l -delete
stow -d $HOME/dotfiles -t $HOME default \
default darkman fish mpv sway scripts

git add .
git commit -m "files update"
git push
