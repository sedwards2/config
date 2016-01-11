#!/bin/bash

set -e

# note will need to set up password less sudo for this script?
# sudo visudo

# install git
sudo apt-get install git
mkdir -p ~/git

# install chef-dk
if [ command -v linuxbrew > /dev/null 2>&1 || { exit 1; } ]; then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/linuxbrew/go/install)"
    sudo apt-get install build-essential
    brew doctor
fi

if [ -d "~/git/chef" ]; then
    git clone https://github.com/sedwards2/chef
fi

cd ~/git/chef
chef-client -z -o dev

