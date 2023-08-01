#!/usr/bin/env bash

PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"

###############################################################################

# ask for the administrator password upfront
sudo -v

# keep-alive - update existing `sudo` time stamp until finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

###############################################################################

echo "### brew bundle"
brew bundle

echo "### brew cleanup"
brew cleanup
