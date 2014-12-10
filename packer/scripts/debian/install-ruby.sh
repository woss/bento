#!/bin/sh -eux
# enable testing
echo " \

# Testing repository - main, contrib and non-free branches
deb http://http.us.debian.org/debian testing main non-free contrib
" >> /etc/apt/sources.list

apt-get update
apt-get install -y ruby2.1
