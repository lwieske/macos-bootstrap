#!/usr/bin/env bash

###############################################################################

# ask for the administrator password upfront
sudo -v

# keep-alive - update existing `sudo` time stamp until finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

###############################################################################

if test ! $(which brew); then
  echo "### install homebrew"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" </dev/null >/dev/null 2>&1
fi

PATH="/usr/local/sbin:$PATH"

echo "### brew update + upgrade + doctor + tap homebrew/bundle"
brew update; brew upgrade; brew doctor; brew tap homebrew/bundle

echo "### brew bundle"
brew bundle

echo "### brew cleanup"
brew cleanup
