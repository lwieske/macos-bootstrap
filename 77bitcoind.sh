#!/usr/bin/env bash

VERSION=0.13.0
PRUNE=5000

###############################################################################

# ask for the administrator password upfront
sudo -v

# keep-alive - update existing `sudo` time stamp until finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

###############################################################################

URL=https://bitcoin.org/bin/bitcoin-core-${VERSION}/bitcoin-${VERSION}-osx64.tar.gz

BITCOINCONF="~/Library/Application Support/Bitcoin/bitcoin.conf"
RPCPASSWORD=$(cat /dev/urandom | env LC_CTYPE=C tr -dc a-zA-Z0-9 | head -c45)

curl ${URL} | tar -zxf -

sudo cp bitcoin-${VERSION}/bin/bitcoind /usr/local/bin/.

rm -rf bitcoin-${VERSION}

mkdir -p $(dirname ${BITCOINCONF})

touch     ${BITCOINCONF}
chmod 600 ${BITCOINCONF}

RPCPASSWORD=$(cat /dev/urandom | env LC_CTYPE=C tr -dc a-zA-Z0-9 | head -c45)

echo "rpcuser=bitcoinrpc"         >> ${BITCOINCONF}
echo "rpcpassword=${RPCPASSWORD}" >> ${BITCOINCONF}
echo "prune=${PRUNE}"             >> ${BITCOINCONF}

curl https://raw.githubusercontent.com/bitcoin/bitcoin/master/contrib/init/org.bitcoin.bitcoind.plist > ~/Library/LaunchAgents/org.bitcoin.bitcoind.plist
