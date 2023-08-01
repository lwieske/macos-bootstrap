#!/usr/bin/env bash

COMMAND="/bin/zsh --login"
FONT="SFMono-Regular 18"

###############################################################################

# ask for the administrator password upfront
sudo -v

# keep-alive - update existing `sudo` time stamp until finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

###############################################################################

PATH=/opt/homebrew/bin:/opt/homebrew/sbin:${PATH}

brew install --cask iterm2

XML_ITERM2_PLIST=https://raw.githubusercontent.com/gnachman/iTerm2/master/plists/iTerm2.plist
XML_BOOKMARK_PLIST=https://raw.githubusercontent.com/gnachman/iTerm2/master/plists/DefaultBookmark.plist

BIN_PLIST=${HOME}/Library/Preferences/com.googlecode.iTerm2.plist

curl -s ${XML_ITERM2_PLIST}   -o iTerm2.plist.xml
curl -s ${XML_BOOKMARK_PLIST} -o DefaultBookmark.plist.xml

plutil -convert binary1 -o iTerm2.plist          iTerm2.plist.xml
plutil -convert binary1 -o DefaultBookmark.plist DefaultBookmark.plist.xml

/usr/libexec/PlistBuddy -c 'Add "New Bookmarks" array'                       iTerm2.plist
/usr/libexec/PlistBuddy -c 'Add "New Bookmarks":0 dict'                      iTerm2.plist
/usr/libexec/PlistBuddy -c 'Merge ./DefaultBookmark.plist "New Bookmarks":0' iTerm2.plist

mv iTerm2.plist ${BIN_PLIST}

rm DefaultBookmark.plist DefaultBookmark.plist.xml iTerm2.plist.xml

################################################################################
### command  ###################################################################
################################################################################

echo "### iterm - set \"Command\" = \"${COMMAND}\""
/usr/libexec/PlistBuddy -c "Set \"New Bookmarks\":0:\"Command\" \"${COMMAND}\"" ${BIN_PLIST}

################################################################################
### font #######################################################################
################################################################################

echo "### iterm - set \"Normal Font\" = \"${FONT}\""
/usr/libexec/PlistBuddy -c  "Set \"New Bookmarks\":0:\"Normal Font\" \"${FONT}\"" ${BIN_PLIST}

################################################################################
### unlimited scrollback #######################################################
################################################################################

echo "### iterm - set Unlimited Scrollback = true"
/usr/libexec/PlistBuddy -c  "Set \"New Bookmarks\":0:\"Unlimited Scrollback\" true" ${BIN_PLIST}

################################################################################
### reset preferences cache ####################################################
################################################################################

/usr/libexec/PlistBuddy -c 'Print "New Bookmarks":0' ${BIN_PLIST} | grep Font

defaults write com.googlecode.iterm2 PromptOnQuit            -bool false
defaults write com.googlecode.iterm2 SUAutomaticallyUpdate   -bool false
defaults write com.googlecode.iterm2 SUEnableAutomaticChecks -bool false

echo "### iterm - reset preferences cache"
defaults read com.googlecode.iterm2 >/dev/null 2>&1

sudo killall cfprefsd
