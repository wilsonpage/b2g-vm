#!/usr/bin/env bash

sudo apt-get update

sudo apt-get install -y autoconf2.13 bison bzip2 ccache curl flex gawk gcc g++ g++-multilib git ia32-libs lib32ncurses5-dev lib32z1-dev libasound-dev libgl1-mesa-dev libx11-dev lzop make zip libxml2-utils python-pip software-properties-common python-software-properties

sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test
sudo add-apt-repository ppa:nilarimogard/webupd8

sudo apt-get install -y android-tools-adb libusb-1.0-0 libusb-1.0-0-dev gcc-4.8 g++-4.8

# for profile.sh
sudo pip install requests

# make sure gcc points to gcc-4.8
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.8 2
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.8 2

sudo update-alternatives --set gcc "/usr/bin/gcc-4.8"
sudo update-alternatives --set g++ "/usr/bin/g++-4.8"

ccache --max-size 10GB

# Install 'VirtualBox Extension Pack'