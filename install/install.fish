#!/usr/bin/fish

cd (dirname (status -f))

yay -Syu --noconfirm - < package.list

#pip
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
sudo python ./get-pip.py
rm ./get-pip.py

#deoplete
pip3 install --user pynvim
nvim -c 'UpdateRemotePlugins' -c 'q'

#haskell
curl -sSL https://get.haskellstack.org/ | sudo sh
stack setup
stack update
stack upgrade
