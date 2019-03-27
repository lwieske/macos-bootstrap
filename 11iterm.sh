#!/usr/bin/env bash

COMMAND="/bin/zsh --login"
FONT="SourceCodePro+Powerline+Awesome+Regular 14"
COLOR="Brogrammer"

################################################################################

# ask for the administrator password upfront
sudo -v

# keep alive - update existing `sudo` time stamp until finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

################################################################################

main() {

################################################################################
### shell ######################################################################
################################################################################

echo "### iterm - set zsh login shell"
sudo chsh -s /bin/zsh $USER

################################################################################
### font #######################################################################
################################################################################

echo "### iterm - reset font cache"
atsutil databases -removeUser
atsutil server    -shutdown
atsutil server    -ping

echo "### iterm - powerline font ${FONT}"
if ! `plistbuddy 'Print "New Bookmarks"' >/dev/null 2>&1`; then
  plistbuddy 'Add "New Bookmarks"                    array'
  plistbuddy 'Add "New Bookmarks":0                  dict'
  plistbuddy 'Add "New Bookmarks":0:"Command"        string'
  plistbuddy 'Add "New Bookmarks":0:"Normal Font"    string'
  plistbuddy 'Add "New Bookmarks":0:"Non Ascii Font" string'
  plistbuddy 'Add "New Bookmarks":0:"Terminal Type"  string'
fi
if `plistbuddy 'Print "New Bookmarks":0:"Command"' >/dev/null 2>&1`; then
  plistbuddy "Set \"New Bookmarks\":0:\"Command\" \"${COMMAND}\""
fi
if `plistbuddy 'Print "New Bookmarks":0:"Normal Font"' >/dev/null 2>&1`; then
  plistbuddy "Set \"New Bookmarks\":0:\"Normal Font\" \"${FONT}\""
fi
if `plistbuddy 'Print "New Bookmarks":0:"Non Ascii Font"' >/dev/null 2>&1`; then
  plistbuddy "Set \"New Bookmarks\":0:\"Non Ascii Font\" \"${FONT}\""
fi
if `plistbuddy 'Print "New Bookmarks":0:"Terminal Type"' >/dev/null 2>&1`; then
  plistbuddy 'Set "New Bookmarks":0:"Terminal Type" xterm-256color'
fi

################################################################################
### colors #####################################################################
################################################################################
echo "### iterm - color preset ${COLOR}"
if ! `plistbuddy 'Print "Custom Color Presets"' >/dev/null 2>&1`; then
  plistbuddy "Add \"Custom Color Presets\"              dict"
  plistbuddy "Add \"Custom Color Presets\":\"${COLOR}\" dict"
  git clone https://github.com/mbadolato/iTerm2-Color-Schemes.git >/dev/null 2>&1
  pushd iTerm2-Color-Schemes/schemes >/dev/null 2>&1
    plistbuddy "Merge ${COLOR}.itermcolors \"Custom Color Presets\":\"${COLOR}\""
    plistbuddy "Merge ${COLOR}.itermcolors \"New Bookmarks\":0"
  popd >/dev/null 2>&1
  rm -rf iTerm2-Color-Schemes
fi

################################################################################
### misc #######################################################################
################################################################################
echo "### iterm - reuse prev session directory"
if `plistbuddy 'Print "New Bookmarks":0:"Custom Directory"' >/dev/null 2>&1`; then
  plistbuddy 'Set "New Bookmarks":0:"Custom Directory" Recycle'
fi

echo "### iterm - unlimited scrollback"
if `plistbuddy 'Print "New Bookmarks":0:"Unlimited Scrollback"' >/dev/null 2>&1`; then
  plistbuddy 'Set "New Bookmarks":0:"Unlimited Scrollback" true'
fi

echo "### iterm - reset preferences cache"
defaults read com.googlecode.iterm2

}

plistbuddy () {
  /usr/libexec/PlistBuddy -c "$1"  ~/Library/Preferences/com.googlecode.iTerm2.plist
}

main
