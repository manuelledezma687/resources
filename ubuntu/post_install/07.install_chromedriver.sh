#!/bin/bash

# fail if any commands fails
set -e
# debug log
#set -x

# Set superuser privileges command if not set
if [[ -z $su ]]; then
  export su="sudo"
fi

$su apt-get update -qq
$su apt-get install -qq -y curl

mkdir -p ~/Downloads
cd ~/Downloads || return
latest_release=$(curl -L "https://chromedriver.storage.googleapis.com/LATEST_RELEASE")
latest_release_url="https://chromedriver.storage.googleapis.com/${latest_release}/chromedriver_linux64.zip"
curl -OL "${latest_release_url}"
unzip chromedriver_linux64.zip
mv chromedriver $HOME/bin/