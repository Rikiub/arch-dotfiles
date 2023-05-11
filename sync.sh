#/usr/bin/env sh

find $HOME -xtype l -delete
stow -d $HOME/dotfiles -t $HOME */

git add .
git commit -m "update"
git push
