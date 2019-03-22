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

echo "### brew bundle browser (brew+cask+mas)"

for brew in                   \
            "00initialize"    \
                              \
            "10editor"        \
            "11terminal"      \
                              \
            "20quicklook"     \
                              \
            "30browser"       \
                              \
            "40github"        \
            "41social"        \
                              \
            "50virtual"       \
            "51container"     \
                              \
            "60cloud"         \
            "61analytics"     \
                              \
            "70lang"          \
            "71ide"           \
            "72config"        \
            "73stores"        \
            "74queues"        \
            "75microservices" \
            "76iot"           \
            "77blockchain"    \
            "78ar"            \
                              \
            "80office"        \
            "81util"          \
            "82misc"          \
                              \
    ; do
    echo "### brew/cask/mas ${brew}"
    pushd brews/${brew} ; brew bundle install --force; popd
done

echo "### brew cleanup"
brew cleanup
