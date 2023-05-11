#/usr/bin/env sh

# find and delete broken symlinks
find $HOME -xtype l -delete

# sync stow files
stow -d $HOME/dotfiles -t $HOME \
default fish scripts mpv darkman sway
