# macos-bootstrap

## Testing and Validating with Packer/Vagrant

```
vagrant destroy --force
sudo gem install macinbox
sudo macinbox --box-format virtualbox
vagrant init macinbox
```

```
vagrant up
vagrant scp ../macos-bootstrap .
vagrant ssh -c "cd macos-bootstrap ; ./bootstrap.sh macos"
vagrant halt ; vagrant up
vagrant ssh -c "cd macos-bootstrap ; ./bootstrap.sh basics"
vagrant halt ; vagrant up
vagrant ssh -c "cd macos-bootstrap ; ./bootstrap.sh brews"
vagrant halt ; vagrant up
```

## ./bootstrap.sh macos

## ./bootstrap.sh basics

## ./bootstrap.sh brews

```
> ./bootstrap.sh all
This script may overwrite existing files in your home directory. Are you sure? (y/n) y
Password:

#############################################################
### set macOS defaults
#############################################################

### general
### screen
### finder
### dock
### mail
### spotlight
### terminal
### time machine
objc[1336]: Class asn1Token is implemented in both /System/Library/PrivateFrameworks/CommerceKit.framework/Versions/A/Frameworks/CommerceCore.framework/Versions/A/CommerceCore (0x121b8d038) and /System/Library/PrivateFrameworks/StoreServices.framework/Versions/A/StoreServices (0x11e382628). One of the two will be used. Which one is undefined.
objc[1336]: Class asn1SetToken is implemented in both /System/Library/PrivateFrameworks/CommerceKit.framework/Versions/A/Frameworks/CommerceCore.framework/Versions/A/CommerceCore (0x121b8d010) and /System/Library/PrivateFrameworks/StoreServices.framework/Versions/A/StoreServices (0x11e382650). One of the two will be used. Which one is undefined.
objc[1336]: Class asn1SequenceToken is implemented in both /System/Library/PrivateFrameworks/CommerceKit.framework/Versions/A/Frameworks/CommerceCore.framework/Versions/A/CommerceCore (0x121b8cfe8) and /System/Library/PrivateFrameworks/StoreServices.framework/Versions/A/StoreServices (0x11e382678). One of the two will be used. Which one is undefined.
objc[1336]: Class asn1IntegerToken is implemented in both /System/Library/PrivateFrameworks/CommerceKit.framework/Versions/A/Frameworks/CommerceCore.framework/Versions/A/CommerceCore (0x121b8cf70) and /System/Library/PrivateFrameworks/StoreServices.framework/Versions/A/StoreServices (0x11e3826a0). One of the two will be used. Which one is undefined.
objc[1336]: Class asn1OSToken is implemented in both /System/Library/PrivateFrameworks/CommerceKit.framework/Versions/A/Frameworks/CommerceCore.framework/Versions/A/CommerceCore (0x121b8cf98) and /System/Library/PrivateFrameworks/StoreServices.framework/Versions/A/StoreServices (0x11e3826c8). One of the two will be used. Which one is undefined.
objc[1336]: Class ISPurchaseReceipt is implemented in both /System/Library/PrivateFrameworks/CommerceKit.framework/Versions/A/Frameworks/CommerceCore.framework/Versions/A/CommerceCore (0x121b8cf48) and /System/Library/PrivateFrameworks/StoreServices.framework/Versions/A/StoreServices (0x11e382a38). One of the two will be used. Which one is undefined.
objc[1336]: Class asn1ReceiptToken is implemented in both /System/Library/PrivateFrameworks/CommerceKit.framework/Versions/A/Frameworks/CommerceCore.framework/Versions/A/CommerceCore (0x121b8cfc0) and /System/Library/PrivateFrameworks/StoreServices.framework/Versions/A/StoreServices (0x11e384ce8). One of the two will be used. Which one is undefined.
objc[1336]: Class AAFollowUpController is implemented in both /System/Library/PrivateFrameworks/AppleAccount.framework/Versions/A/AppleAccount (0x11e0bdda0) and /System/Library/PrivateFrameworks/AOSAccounts.framework/Versions/A/AOSAccounts (0x106d74ef0). One of the two will be used. Which one is undefined.
objc[1336]: Class AMSupportURLConnectionDelegate is implemented in both /System/Library/PrivateFrameworks/EmbeddedOSInstall.framework/Versions/A/EmbeddedOSInstall (0x1255f2c58) and /System/Library/PrivateFrameworks/OSPersonalization.framework/Versions/A/OSPersonalization (0x125455358). One of the two will be used. Which one is undefined.
objc[1336]: Class PKFileDownload is implemented in both /System/Library/PrivateFrameworks/PackageKit.framework/Versions/A/PackageKit (0x123fe14a8) and /System/Library/PrivateFrameworks/PassKitCore.framework/Versions/A/PassKitCore (0x111debf48). One of the two will be used. Which one is undefined.
objc[1336]: Class SSRequest is implemented in both /System/Library/PrivateFrameworks/StoreServices.framework/Versions/A/StoreServices (0x11e37f1a8) and /System/Library/PrivateFrameworks/StoreFoundation.framework/Versions/A/StoreFoundation (0x124679d90). One of the two will be used. Which one is undefined.
objc[1336]: Class SSOperationProgress is implemented in both /System/Library/PrivateFrameworks/StoreServices.framework/Versions/A/StoreServices (0x11e37ef78) and /System/Library/PrivateFrameworks/StoreFoundation.framework/Versions/A/StoreFoundation (0x12467a150). One of the two will be used. Which one is undefined.
objc[1336]: Class SSDownloadMetadata is implemented in both /System/Library/PrivateFrameworks/StoreServices.framework/Versions/A/StoreServices (0x11e37ec58) and /System/Library/PrivateFrameworks/StoreFoundation.framework/Versions/A/StoreFoundation (0x12467a5b0). One of the two will be used. Which one is undefined.
objc[1336]: Class SSDownloadAsset is implemented in both /System/Library/PrivateFrameworks/StoreServices.framework/Versions/A/StoreServices (0x11e37ef28) and /System/Library/PrivateFrameworks/StoreFoundation.framework/Versions/A/StoreFoundation (0x12467a650). One of the two will be used. Which one is undefined.
objc[1336]: Class SSDownloadPhase is implemented in both /System/Library/PrivateFrameworks/StoreServices.framework/Versions/A/StoreServices (0x11e37ee88) and /System/Library/PrivateFrameworks/StoreFoundation.framework/Versions/A/StoreFoundation (0x12467a6a0). One of the two will be used. Which one is undefined.
objc[1336]: Class SSDownloadStatus is implemented in both /System/Library/PrivateFrameworks/StoreServices.framework/Versions/A/StoreServices (0x11e37ee38) and /System/Library/PrivateFrameworks/StoreFoundation.framework/Versions/A/StoreFoundation (0x12467a718). One of the two will be used. Which one is undefined.
objc[1336]: Class SSDownloadManifestResponse is implemented in both /System/Library/PrivateFrameworks/StoreServices.framework/Versions/A/StoreServices (0x11e37f158) and /System/Library/PrivateFrameworks/StoreFoundation.framework/Versions/A/StoreFoundation (0x12467a740). One of the two will be used. Which one is undefined.
objc[1336]: Class SSPurchase is implemented in both /System/Library/PrivateFrameworks/StoreServices.framework/Versions/A/StoreServices (0x11e37f518) and /System/Library/PrivateFrameworks/StoreFoundation.framework/Versions/A/StoreFoundation (0x124679890). One of the two will be used. Which one is undefined.
objc[1336]: Class SSPurchaseResponse is implemented in both /System/Library/PrivateFrameworks/StoreServices.framework/Versions/A/StoreServices (0x11e383398) and /System/Library/PrivateFrameworks/StoreFoundation.framework/Versions/A/StoreFoundation (0x1246798b8). One of the two will be used. Which one is undefined.
objc[1336]: Class SSDownload is implemented in both /System/Library/PrivateFrameworks/StoreServices.framework/Versions/A/StoreServices (0x11e37ebb8) and /System/Library/PrivateFrameworks/StoreFoundation.framework/Versions/A/StoreFoundation (0x124679840). One of the two will be used. Which one is undefined.
objc[1336]: Class SSRestoreContentItem is implemented in both /System/Library/PrivateFrameworks/StoreServices.framework/Versions/A/StoreServices (0x11e381a48) and /System/Library/PrivateFrameworks/CommerceKit.framework/Versions/A/CommerceKit (0x124743060). One of the two will be used. Which one is undefined.
objc[1336]: Class SSURLRequestProperties is implemented in both /System/Library/PrivateFrameworks/StoreServices.framework/Versions/A/StoreServices (0x11e380918) and /System/Library/PrivateFrameworks/CommerceKit.framework/Versions/A/CommerceKit (0x124743510). One of the two will be used. Which one is undefined.
objc[1336]: Class SSMutableURLRequestProperties is implemented in both /System/Library/PrivateFrameworks/StoreServices.framework/Versions/A/StoreServices (0x11e380940) and /System/Library/PrivateFrameworks/CommerceKit.framework/Versions/A/CommerceKit (0x124743538). One of the two will be used. Which one is undefined.
objc[1336]: Class SSRemoteNotification is implemented in both /System/Library/PrivateFrameworks/StoreServices.framework/Versions/A/StoreServices (0x11e380f58) and /System/Library/PrivateFrameworks/CommerceKit.framework/Versions/A/CommerceKit (0x124743790). One of the two will be used. Which one is undefined.
objc[1336]: Class SLWebTokenHandlerController is implemented in both /System/Library/Frameworks/Social.framework/Versions/A/Social (0x121b20820) and /System/Library/PrivateFrameworks/SocialServices.framework/Versions/A/SocialServices (0x121aa4268). One of the two will be used. Which one is undefined.
### activity monitor
### debug menus
### mac app store
### messages
### killall Activity Monitor
### killall Address Book
### killall Calendar
### killall cfprefsd
### killall Contacts
### killall Dock
### killall Finder
### killall iCal
### killall Mail
### killall Messages
### killall Safari
### killall SystemUIServer

#############################################################
### install homebrew and brew everything
#############################################################

### install homebrew
### brew update + upgrade + doctor + tap homebrew/bundle
Already up-to-date.
Updating Homebrew...
Your system is ready to brew.
Updating Homebrew...
==> Tapping homebrew/bundle
Cloning into '/usr/local/Homebrew/Library/Taps/homebrew/homebrew-bundle'...
remote: Enumerating objects: 90, done.
remote: Counting objects: 100% (90/90), done.
remote: Compressing objects: 100% (80/80), done.
remote: Total 90 (delta 6), reused 30 (delta 4), pack-reused 0
Unpacking objects: 100% (90/90), done.
Tapped 1 command (186 files, 251.9KB).
### brew bundle
Tapping caskroom/cask
Tapping caskroom/fonts
Tapping caskroom/versions
Tapping homebrew/cask-drivers
Using homebrew/bundle
Tapping buo/cask-upgrade
Installing mas
Installing visual-studio-code
Installing iterm2
Installing java
Installing go
Installing node
Installing python3
Installing r
Installing rust
Installing qlimagesize
Installing qlmarkdown
Installing qlprettypatch
Installing qlstephen
Installing quicklook-csv
Installing quicklook-json
Installing webpquicklook
Installing firefox
Installing git
Installing git-flow
Installing git-lfs
Installing github
Installing slack
Installing packer
Installing virtualbox has failed!
Installing vagrant
Installing xhyve
Installing consul
Installing docker-machine-driver-hyperkit
Installing docker-machine-driver-xhyve
Installing docker-machine
Installing docker
Installing etcd
Installing faas-cli
Installing kubernetes-cli
Installing kubernetes-helm
Installing minikube
Installing box-sync
Installing dropbox
Installing google-backup-and-sync
Installing sync
Installing awscli
Installing azure-cli
Installing google-cloud-sdk
Installing octave
Installing rstudio
Installing unity
Installing ansible
Installing powershell
Installing saltstack
Installing terraform
Installing cassandra
Installing mariadb
Installing mongodb
Installing postgresql
Installing redis
Installing rabbitmq
Installing zeromq
Installing jetty
Installing nginx
Installing arduino
Installing balenaetcher
Installing microsoft-office has failed!
Installing asciinema
Installing graphviz
Installing gettext
Installing gomplate
Installing imagemagick
Installing jq
Installing openssl
Installing tmux
Installing ttyrec
Installing unrar
Installing wget
Installing xz
Installing adobe-acrobat-reader
Installing authy
Installing blender
Installing brave-browser
Installing cleanmymac
Installing drawio
Installing falcon-sql-client
Installing keybase
Installing kindle
Installing monodraw
Installing musescore
Installing openscad
Installing spectacle
Installing wireshark
Homebrew Bundle failed! 2 Brewfile dependencies failed to install.
### brew cleanup
Pruned 0 symbolic links and 10 directories from /usr/local

#############################################################
### install vscode extensions
#############################################################

Installing extensions...
Installing extension 'amazonwebservices.aws-toolkit-vscode' v1.1.0...
Extension 'amazonwebservices.aws-toolkit-vscode' v1.1.0 was successfully installed.
Installing extensions...
Installing extension 'davidanson.vscode-markdownlint' v0.30.2...
Extension 'davidanson.vscode-markdownlint' v0.30.2 was successfully installed.
Installing extensions...
Installing extension 'eg2.vscode-npm-script' v0.3.9...
Extension 'eg2.vscode-npm-script' v0.3.9 was successfully installed.
Installing extensions...
Installing extension 'formulahendry.azure-storage-explorer' v0.1.2...
Extension 'formulahendry.azure-storage-explorer' v0.1.2 was successfully installed.
Installing extensions...
Installing extension 'googlecloudtools.cloudcode' v0.0.12...
Extension 'googlecloudtools.cloudcode' v0.0.12 was successfully installed.
Installing extensions...
Installing extension 'humao.rest-client' v0.22.2...
Extension 'humao.rest-client' v0.22.2 was successfully installed.
Installing extensions...
Installing extension 'mauve.terraform' v1.4.0...
Extension 'mauve.terraform' v1.4.0 was successfully installed.
Installing extensions...
Installing extension 'ms-azure-devops.azure-pipelines' v1.157.4...
Extension 'ms-azure-devops.azure-pipelines' v1.157.4 was successfully installed.
Installing extensions...
Installing extension 'ms-azuretools.vscode-docker' v0.8.1...
Extension 'ms-azuretools.vscode-docker' v0.8.1 was successfully installed.
Installing extensions...
Installing extension 'ms-kubernetes-tools.vscode-kubernetes-tools' v1.0.4...
Extension 'ms-kubernetes-tools.vscode-kubernetes-tools' v1.0.4 was successfully installed.
Installing extensions...
Installing extension 'ms-python.anaconda-extension-pack' v1.0.1...
Extension 'ms-python.anaconda-extension-pack' v1.0.1 was successfully installed.
Installing extensions...
Extension 'ms-python.python' is already installed.
Installing extensions...
Installing extension 'ms-vscode-remote.remote-ssh' v0.46.1...
Extension 'ms-vscode-remote.remote-ssh' v0.46.1 was successfully installed.
Installing extensions...
Installing extension 'ms-vscode-remote.remote-wsl' v0.39.5...
Extension 'ms-vscode-remote.remote-wsl' v0.39.5 was successfully installed.
Installing extensions...
Installing extension 'ms-vscode.azurecli' v0.4.6...
Extension 'ms-vscode.azurecli' v0.4.6 was successfully installed.
Installing extensions...
Installing extension 'ms-vscode.go' v0.11.7...
Extension 'ms-vscode.go' v0.11.7 was successfully installed.
Installing extensions...
Installing extension 'ms-vscode.vscode-node-azure-pack' v0.0.9...
Extension 'ms-vscode.vscode-node-azure-pack' v0.0.9 was successfully installed.
Installing extensions...
Installing extension 'ms-vsliveshare.vsliveshare' v1.0.905...
Extension 'ms-vsliveshare.vsliveshare' v1.0.905 was successfully installed.
Installing extensions...
Extension 'redhat.vscode-yaml' is already installed.
Installing extensions...
Installing extension 'rust-lang.rust' v0.6.3...
#!/usr/bin/env bash
Extension 'rust-lang.rust' v0.6.3 was successfully installed.
Installing extensions...
Installing extension 'vscode-icons-team.vscode-icons' v9.4.0...
Extension 'vscode-icons-team.vscode-icons' v9.4.0 was successfully installed.
Installing extensions...
Installing extension 'vscoss.vscode-ansible' v0.5.2...
Extension 'vscoss.vscode-ansible' v0.5.2 was successfully installed.
Installing extensions...
Installing extension 'yzhang.markdown-all-in-one' v2.4.2...
Extension 'yzhang.markdown-all-in-one' v2.4.2 was successfully installed.

#####################################################################
### ... completed ... restart to ensure all updates take effect
#####################################################################

>
```

```
brew update && brew upgrade && brew cu --all --yes --cleanup && mas upgrade && brew cleanup
```