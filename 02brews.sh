#!/usr/bin/env bash

###############################################################################

# ask for the administrator password upfront
sudo -v

# keep-alive - update existing `sudo` time stamp until finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

###############################################################################

if test ! $(which brew); then
  echo "### install homebrew"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" </dev/null 2>/dev/null
fi

PATH="/usr/local/sbin:$PATH"

echo "### brew update/upgrade"
brew update ; brew upgrade

echo "### brew doctor"
brew doctor

echo "### brew tap homebrew/bundle"
brew tap homebrew/bundle

echo "### brew bundle loop (brew+cask+mas)"

for bundle in brews/[2-9]*;
do
    echo "### brew/cask/mas ${bundle}"
    pushd ${bundle} >/dev/null 2>&1; brew bundle ; popd>/dev/null 2>&1
done

echo "### brew cleanup"
brew cleanup
