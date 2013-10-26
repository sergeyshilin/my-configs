#!/bin/sh
sudo apt-get update && sudo apt-get install git
cd ~/.config/sublime-text-2/Packages
git clone --recursive https://github.com/quarnster/SublimeClang SublimeClang
cd SublimeClang
git pull && git submodule foreach --recursive git pull origin master
curl -kL http://xrl.us/pythonbrewinstall | bash
source "$HOME/.pythonbrew/etc/bashrc"
pythonbrew install --configure="--enable-unicode=ucs4" 2.6
ln -s $HOME/.pythonbrew/pythons/Python-2.6/lib/python2.6/ /usr/lib/Sublime Text 2/lib/python2.6
sudo apt-get update && sudo apt-get install build-essential cmake
mkdir ~/.config/sublime-text-2/Packages/SublimeClang/src/build && cd ~/.config/sublime-text-2/Packages/SublimeClang/src/build
cmake ..
make -j 8
udo add-apt-repository ppa:ubuntu-toolchain-r/test
sudo apt-get update
sudo apt-get install g++-4.7 gcc-4.7 --install-suggests
sudo apt-get dist-upgrade
