#!/usr/bin/env bash

################################################################################

# ask for the administrator password upfront
sudo -v

# keep alive - update existing `sudo` time stamp until finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

################################################################################
# "Siri"
# "Launchpad"
# "Safari"
# "Mail"
# "Contacts"
# "Calendar"
# "Notes"
# "Reminders"

for i in                                                                       \
          "Maps"                                                               \
          "Photos"                                                             \
          "Messages"                                                           \
          "FaceTime"                                                           \
          "iTunes"                                                             \
          "iBooks"                                                             \
          "App Store"                                                        \
          "System Preferences"                                               \
          ; do
  echo "### dock - delete $i"
  dloc=$(defaults read com.apple.dock persistent-apps | grep _CFURLString\" | awk "/$i/ {print NR}")
  /usr/libexec/PlistBuddy -c "Delete persistent-apps:$dloc" ~/Library/Preferences/com.apple.dock.plist

done

for i in "Atom" "iTerm"; do
  echo "### dock - add $i"
  defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/$i.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"
done

echo "### dock - restart Dock"
killall -KILL Dock
