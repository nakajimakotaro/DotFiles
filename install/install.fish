#!/usr/bin/fish

cd (dirname (status -f))

curl -L https://github.com/Jguer/yay/releases/download/v8.1173.0/yay_8.1173.0_x86_64.tar.gz | tar xz --strip-components=1 --no-anchored yay
./yay -Syu --noconfirm yay-bin
rm ./yay

yay -Syu --noconfirm - < package.list
