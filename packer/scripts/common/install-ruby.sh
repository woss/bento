#!/bin/sh -eux
gpg --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3
curl -sSL https://get.rvm.io | bash -s stable

source /usr/local/rvm/scripts/rvm

rvm use --install 2.1.4

shift

if (( $# ))
then gem install $@
fi