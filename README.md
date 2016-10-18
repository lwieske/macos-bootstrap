# macos-bootstrap

## Testing and Validatin with Packer/Vagrant

```
vagrant destroy --force
vagrant up --provider virtualbox
vagrant ssh -c "git clone https://github.com/lwieske/macos-bootstrap"
vagrant ssh -c "cd macos-bootstrap ; ./bootstrap.sh macos"
vagrant halt
vagrant up --provider virtualbox
vagrant ssh -c "cd macos-bootstrap ; ./bootstrap.sh basics"
vagrant halt
vagrant up --provider virtualbox
```

## ./bootstrap.sh macos

## ./bootstrap.sh basics

## ./bootstrap.sh brews

  ```
  ./bootstrap.sh brews
  This script may overwrite existing files in your home directory. Are you sure? (y/n) y
  Password:

  #############################################################
  ### brew everything
  #############################################################


  ### brew update/upgrade
  Already up-to-date.
  ### brew doctor
  Your system is ready to brew.
  ### brew tap homebrew/bundle
  ### brew bundle browser (brew+cask+mas)
  ### brew/cask/mas 20quicklook
  ~/macos-bootstrap/brews/20quicklook ~/macos-bootstrap
  Succeeded in installing betterzipql
  Succeeded in installing qlimagesize
  Succeeded in installing qlmarkdown
  Succeeded in installing qlprettypatch
  Succeeded in installing qlstephen
  Succeeded in installing quicklook-csv
  Succeeded in installing quicklook-json
  Succeeded in installing webpquicklook

  Success: 8 Fail: 0
  ~/macos-bootstrap
  ### brew/cask/mas 30browser
  ~/macos-bootstrap/brews/30browser ~/macos-bootstrap
  Succeeded in installing firefox
  Succeeded in installing google-chrome

  Success: 2 Fail: 0
  ~/macos-bootstrap
  ### brew/cask/mas 40github
  ~/macos-bootstrap/brews/40github ~/macos-bootstrap
  Succeeded in installing git
  Succeeded in installing git-flow
  Succeeded in installing github-desktop

  Success: 3 Fail: 0
  ~/macos-bootstrap
  ### brew/cask/mas 41social
  ~/macos-bootstrap/brews/41social ~/macos-bootstrap
  Succeeded in installing adium
  Succeeded in installing Pocket
  Succeeded in installing slack
  Succeeded in installing Twitter
  Succeeded in installing Wunderlist

  Success: 5 Fail: 0
  ~/macos-bootstrap
  ### brew/cask/mas 50virtual
  ~/macos-bootstrap/brews/50virtual ~/macos-bootstrap
  Succeeded in installing virtualbox
  Succeeded in installing vagrant
  Succeeded in installing vmware-fusion
  Succeeded in installing packer

  Success: 4 Fail: 0
  ~/macos-bootstrap
  ### brew/cask/mas 51container
  ~/macos-bootstrap/brews/51container ~/macos-bootstrap
  Succeeded in installing docker
  Succeeded in installing docker-machine
  Succeeded in installing docker-swarm

  Success: 3 Fail: 0
  ~/macos-bootstrap
  ### brew/cask/mas 60cloud
  ~/macos-bootstrap/brews/60cloud ~/macos-bootstrap
  Succeeded in installing box-sync
  Succeeded in installing dropbox
  Succeeded in installing google-drive
  Succeeded in installing OneDrive
  Succeeded in installing awscli
  Succeeded in installing azure-cli
  Succeeded in installing kubernetes-cli
  Succeeded in installing cf-cli
  Succeeded in installing heroku-toolbelt
  Succeeded in installing consul

  Success: 10 Fail: 0
  ~/macos-bootstrap
  ### brew/cask/mas 70lang
  ~/macos-bootstrap/brews/70lang ~/macos-bootstrap
  Succeeded in installing go
  Password:
  Succeeded in installing java
  Succeeded in installing ant
  Succeeded in installing gradle
  Succeeded in installing maven
  Succeeded in installing node
  Succeeded in installing python
  Succeeded in installing python3
  Succeeded in installing r
  Succeeded in installing scala
  Succeeded in installing sbt

  Success: 11 Fail: 0
  ~/macos-bootstrap
  ### brew/cask/mas 71ide
  ~/macos-bootstrap/brews/71ide ~/macos-bootstrap
  Succeeded in installing android-sdk
  Succeeded in installing android-studio
  Succeeded in installing livereload
  Succeeded in installing rstudio
  Password:
  Succeeded in installing unity
  Succeeded in installing dash

  Success: 6 Fail: 0
  ~/macos-bootstrap
  ### brew/cask/mas 72config
  ~/macos-bootstrap/brews/72config ~/macos-bootstrap
  Succeeded in installing ansible
  Succeeded in installing powershell
  Succeeded in installing saltstack

  Success: 3 Fail: 0
  ~/macos-bootstrap
  ### brew/cask/mas 73stores
  ~/macos-bootstrap/brews/73stores ~/macos-bootstrap
  Succeeded in installing cassandra
  Succeeded in installing mariadb
  Succeeded in installing mongodb
  Succeeded in installing neo4j
  Succeeded in installing postgresql
  Succeeded in installing redis
  Succeeded in installing sqlite
  Succeeded in installing elasticsearch
  Succeeded in installing mysqlworkbench
  Succeeded in installing postico
  Succeeded in installing mongodbpreferencepane

  Success: 11 Fail: 0
  ~/macos-bootstrap
  ### brew/cask/mas 74queues
  ~/macos-bootstrap/brews/74queues ~/macos-bootstrap
  Succeeded in installing rabbitmq
  Succeeded in installing zeromq

  Success: 2 Fail: 0
  ~/macos-bootstrap
  ### brew/cask/mas 75microservices
  ~/macos-bootstrap/brews/75microservices ~/macos-bootstrap
  Succeeded in installing jetty
  Succeeded in installing nginx
  Succeeded in installing tcserver
  Succeeded in installing postman

  Success: 4 Fail: 0
  ~/macos-bootstrap
  ### brew/cask/mas 76iot
  ~/macos-bootstrap/brews/76iot ~/macos-bootstrap
  Succeeded in installing arduino
  Succeeded in installing etcher
  Succeeded in installing openscad

  Success: 3 Fail: 0
  ~/macos-bootstrap
  ### brew/cask/mas 77blockchain
  ~/macos-bootstrap/brews/77blockchain ~/macos-bootstrap
  Password:
  Succeeded in installing bitcoin-core

  Success: 1 Fail: 0
  ~/macos-bootstrap
  ### brew/cask/mas 78ar
  ~/macos-bootstrap/brews/78ar ~/macos-bootstrap

  Success: 0 Fail: 0
  ~/macos-bootstrap
  ### brew/cask/mas 80office
  ~/macos-bootstrap/brews/80office ~/macos-bootstrap
  Succeeded in installing microsoft-office
  Succeeded in installing Microsoft Remote Desktop

  Success: 2 Fail: 0
  ~/macos-bootstrap
  ### brew/cask/mas 81util
  ~/macos-bootstrap/brews/81util ~/macos-bootstrap
  Succeeded in installing avira-antivirus
  Succeeded in installing cleanmymac
  Succeeded in installing CleanMyDrive 2
  Succeeded in installing dnsmasq
  Succeeded in installing etcd
  Succeeded in installing fleetctl
  Succeeded in installing imagemagick
  Succeeded in installing jq
  Succeeded in installing keybase
  Succeeded in installing openssl
  Succeeded in installing platformio
  Succeeded in installing ttyrec
  Succeeded in installing unrar
  Succeeded in installing wget
  Succeeded in installing wireshark
  Succeeded in installing xz

  Success: 16 Fail: 0
  ~/macos-bootstrap
  ### brew/cask/mas 82misc
  ~/macos-bootstrap/brews/82misc ~/macos-bootstrap
  Succeeded in installing ableton-live
  Succeeded in installing adobe-reader
  Succeeded in installing blender
  Succeeded in installing kindle
  Succeeded in installing monodraw
  Succeeded in installing musescore
  Succeeded in installing sage
  Succeeded in installing sketchup
  Succeeded in installing spectacle
  ```
