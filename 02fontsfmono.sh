#!/usr/bin/env bash

PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"

################################################################################

# ask for the administrator password upfront
sudo -v

# keep alive - update existing `sudo` time stamp until finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

################################################################################

brew install dark-mode

dark-mode on

brew install wget

################################################################################
### install SF Mono font + reset font cache ####################################
################################################################################

wget https://devimages-cdn.apple.com/design/resources/download/SF-Mono.dmg
sudo hdiutil attach ${PWD}/SF-Mono.dmg
sudo installer -pkg /Volumes/SFMonoFonts/SF\ Mono\ Fonts.pkg -target /
sudo hdiutil detach disk4
rm ${PWD}/SF-Mono.dmg
