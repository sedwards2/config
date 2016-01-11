#!/bin/bash

set -e

# note will need to set up password less sudo for this script?
# sudo visudo

# install git
sudo apt-get install git
mkdir -p ~/git

# install chef-dk
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/linuxbrew/go/install)"
sudo apt-get install build-essential
brew doctor

git clone https://github.com/sedwards2/chef
cd ~/git/chef
chef-client -z -o dev

