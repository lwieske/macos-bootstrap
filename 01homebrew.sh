#!/usr/bin/env bash

PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"
echo 'export PATH=$HOME/bin:/usr/local/bin:$PATH' >$HOME/.zshrc

###############################################################################

# ask for the administrator password upfront
sudo -v

# keep-alive - update existing `sudo` time stamp until finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

###############################################################################

if test ! $(which brew); then
  echo "### install homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" </dev/null >/dev/null 2>&1
fi

PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"
echo "export PATH=$HOME/bin:/usr/local/bin:$PATH" >$HOME/.zshrc

echo "### update software"
sudo softwareupdate --all --install --force

echo "### install rosetta 2"
sudo softwareupdate --install-rosetta --agree-to-license

echo "### brew update + upgrade + doctor + tap homebrew/bundle"
brew update; brew upgrade; brew doctor; brew tap homebrew/bundle
