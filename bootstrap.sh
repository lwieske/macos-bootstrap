#!/usr/bin/env bash

function bootstrap() {
    # ask for the administrator password upfront
    sudo -v

    # keep-alive: update existing `sudo` time stamp until the script has finished
    while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

    # run sections based on command line
    for ARG in "$@"
    do
        if [ $ARG == "macos" ] || [ $ARG == "all" ]; then
            echo ""
            echo "#############################################################"
            echo "### set macOS defaults"
            echo "#############################################################"
            echo ""
            ./00macos.sh
        fi
        if [ $ARG == "basics" ] || [ $ARG == "all" ]; then
            echo ""
            echo "#############################################################"
            echo "### install homebrew + editor + terminal"
            echo "#############################################################"
            echo ""
            ./01basics.sh
        fi
        if [ $ARG == "brews" ] || [ $ARG == "all" ]; then
            echo ""
            echo "#############################################################"
            echo "### brew everything"
            echo "#############################################################"
            echo ""
            echo ""
            ./02brews.sh
        fi
    done
    echo ""
    echo "#####################################################################"
    echo "### bootstrap completed ... restart to ensure all updates take effect"
    echo "#####################################################################"
    echo ""
}

read -p "This script may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
echo "";
if [[ $REPLY =~ ^[Yy]$ ]]; then
    bootstrap $@
fi;

unset bootstrap;
