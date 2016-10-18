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

for brew in "00initialize" "10editor" "11terminal"; do
    echo "### brew/cask/mas ${brew}"
    pushd brews/${brew} >/dev/null 2>&1; brew bundle ; popd>/dev/null 2>&1
done

echo "### brew cleanup"
brew cleanup

echo "### patch Source Code Pro (powerline)"
./08powerlinefont.sh

echo "### symlinking dotfiles"
./09dotfiles.sh

echo "### config atom"
./10atom.sh

echo "### config iterm"
./11iterm.sh

echo "### config dock"
./12dock.sh
