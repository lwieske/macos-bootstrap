#!/usr/bin/env bash

###############################################################################

# ask for the administrator password upfront
sudo -v

# keep-alive - update existing `sudo` time stamp until finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

###############################################################################

pushd ~/Library/Fonts
curl -O https://github.com/stefano-meschiari/dotemacs/raw/master/SourceCodePro%2BPowerline%2BAwesome%2BRegular.ttf
mv SourceCodePro%2BPowerline%2BAwesome%2BRegular.ttf SourceCodePro+Powerline+Awesome+Regular.ttf
popd
