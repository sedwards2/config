#!/bin/bash

set -e

# install git
sudo apt-get install git
mkdir -p ~/git

# install chef-dk
curl https://omnitruck.chef.io/install.sh | sudo bash -s -- -c current -P chefdk

if [ -d "~/git/chef" ]; then
    git clone https://github.com/sedwards2/chef
fi

cd ~/git/chef
chef-client -z -o dev

