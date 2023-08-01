#!/usr/bin/env bash

################################################################################

# ask for the administrator password upfront
sudo -v

# keep alive - update existing `sudo` time stamp until finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

###############################################################################

brew install --cask hpedrorodrigues/tools/dockutil

for i in                      \
  com.apple.MobileSMS         \
  com.apple.Maps              \
  com.apple.Photos            \
  com.apple.FaceTime          \
  com.apple.TV                \
  com.apple.AppStore          \
  com.apple.systempreferences \
  com.apple.Terminal          \
  ; do
  echo "### dock - removing $i"
  dockutil --remove $i --allhomes
done

for i in                                          \
  "/System/Applications/Preview.app"              \
  "/System/Applications/Stocks.app"               \
  "/System/Applications/Utilities/Screenshot.app" \
  "/Applications/iTerm.app"                       \
  "/Applications/Visual Studio Code.app"          \
  "/Applications/GitHub Desktop.app"              \
  "/Applications/Multipass.app"                   \
  "/Applications/Pocket.app"                      \
  "/Applications/Slack.app"                       \
  "/Applications/Microsoft Teams.app"             \
  "/Applications/Inkscape.app"                    \
  "/Applications/Blender.app"                     \
  "/Applications/OpenSCAD.app"                    \
  ; do
  echo "### dock - add $i"
  dockutil --add "$i" --allhomes
done

brew uninstall dockutil
brew untap hpedrorodrigues/tools

echo "### dock - restart Dock"
killall Dock
