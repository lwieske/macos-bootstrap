#!/usr/bin/env bash

###############################################################################

# ask for the administrator password upfront
sudo -v

# keep-alive - update existing `sudo` time stamp until finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

###############################################################################

curl -O https://github.com/Lokaltog/powerline-fonts/raw/master/SourceCodePro/Source%20Code%20Pro%20for%20Powerline.otf
fontforge -script Source+Code+Pro+for+Powerline.otf /Library/Fonts/SourceCodePro-Regular.ttf
