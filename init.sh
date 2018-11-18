#!/bin/sh

cd $(dirname $0)

if ! ( which git && which fish ); then
    pacman -Syu --noconfirm git fish
fi

ScriptPath="./script/"
${ScriptPath}/deploy.fish
${ScriptPath}/install.fish

