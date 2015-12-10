#!/bin/bash

# used in current debian container in my dev environment
NODE_VERSION="v0.12.7"
NPM_VERSION="v2.11.3"

echo "=============================================================="
echo "Installing Node.JS ${NODE_VERSION} and npm ${NPM_VERSION}...  "
echo "=============================================================="

cd /tmp
wget http://nodejs.org/dist/$NODE_VERSION/node-$NODE_VERSION.tar.gz

tar -zxf node-$NODE_VERSION.tar.gz --no-same-owner
cd node-$NODE_VERSION
./configure
make && make install

# Update NPM version
npm update -g npm@$NPM_VERSION

rm -rf /tmp/{node,npm}*  && cd /tmp
echo && echo "Node.JS ${NODE_VERSION} and npm ${NPM_VERSION} installed." && echo
