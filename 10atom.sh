#!/usr/bin/env bash

###############################################################################

# ask for the administrator password upfront
sudo -v

# keep-alive - update existing `sudo` time stamp until finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

###############################################################################

apm install atom-beautify
apm install autocomplete-paths
apm install auto-detect-indentation
apm install file-icons
apm install fonts
apm install git-time-machine
apm install language-markdown
apm install linter
apm install linter-golinter
apm install linter-jshint
apm install linter-jsonlint
apm install linter-markdown
apm install linter-rust
apm install merge-conflicts
apm install minimap
apm install minimap-git-diff
apm install minimap-find-and-replace
apm install minimap-split-diff
apm install pigments
apm install sort-lines
apm install split-diff
apm install todo-show

apm install tool-bar markdown-writer
