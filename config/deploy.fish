#!/usr/bin/fish

cd (dirname (status -f))

set ConfigPath (pwd)/config

ln -sf $ConfigPath/init.vim ~/.config/nvim/
ln -sf $ConfigPath/config.fish ~/.config/fish/
ln -sf $ConfigPath/gitconfig ~/.gitconfig
