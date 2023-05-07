#!/bin/bash
# for anyone else with the same issue: delete the new package source:

cd /etc/apt/sources.list.d 
sudo rm nodesource.list
update apt, fix the install, remove nodejs and the nodejs-doc packages

sudo apt --fix-broken install
sudo apt update
sudo apt remove nodejs
sudo apt remove nodejs-doc
#then use the instructions to install the latest node

#in my case:

curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get install -y nodejs

#for the people who doesnt works, try to "sudo apt autoremove" bbefore performing curl command. its work.