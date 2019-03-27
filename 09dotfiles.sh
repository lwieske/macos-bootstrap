#!/usr/bin/env bash

###############################################################################

# ask for the administrator password upfront
sudo -v

# keep-alive - update existing `sudo` time stamp until finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

###############################################################################

pushd ${HOME} ; git clone https://github.com/lwieske/.dotfiles ; popd

[ ! -a ~/.atom ] && ln -s ~/.dotfiles/atom.symlink ~/.atom
[ ! -a ~/.powerlevel9k ] && ln -s ~/.dotfiles/powerlevel9k.symlink ~/.powerlevel9k
[ ! -a ~/.zshrc ] && ln -s ~/.dotfiles/zshrc.symlink ~/.zshrc
