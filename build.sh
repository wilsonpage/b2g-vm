#!/usr/bin/env bash

/vagrant/add-udev-rule.sh

git clone https://github.com/mozilla-b2g/B2G.git --quiet

cd B2G

./config.sh $1
./build.sh
