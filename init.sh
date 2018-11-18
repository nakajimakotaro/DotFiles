#!/bin/sh

cd $(dirname $0)

if ! ( which git && which fish ); then
    pacman -Syu --noconfirm git fish
fi

config/deploy.fish
install/install.fish

