#!/bin/sh

if [ $UID = 0 ]; then
    echo "Rootで実行しないでください"
    exit
fi

cd $(dirname $0)

if ! ( which git && which fish ); then
    pacman -Syu --noconfirm git fish
fi

install/install.fish
config/deploy.fish

