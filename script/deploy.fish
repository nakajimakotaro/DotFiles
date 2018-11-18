#!/usr/bin/fish

#init.shから呼び出される事が前提

set ConfigPath (pwd)/config

ln -sf $ConfigPath/init.vim ~/.config/nvim/
ln -sf $ConfigPath/config.fish ~/.config/fish/
ln -sf $ConfigPath/gitconfig ~/.gitconfig
