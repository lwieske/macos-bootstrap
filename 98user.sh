#!/usr/bin/env bash

#########################
### generate ssh keys ###
#########################
mkdir -p $HOME/.ssh

if [ ! -f $HOME/.ssh/id_ed25519 ]; then
  echo -e "\n" | ssh-keygen -t ed25519 -N "" &> /dev/null
fi

if [ ! -f $HOME/.ssh/id_rsa ]; then
  echo -e "\n" | ssh-keygen -o -b 2048 -t rsa -a 2000 -N "" &> /dev/null
fi

echo 'export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"' >> ${HOME}/.zshrc

##########
### go ###
##########

echo 'export GOROOT=$(brew --prefix go)/libexec' >> ${HOME}/.zshrc
echo 'export PATH=$PATH:$GOROOT/bin'             >> ${HOME}/.zshrc

############
### java ###
############

echo 'export PATH="$HOME/.jenv/bin:$PATH"' >> ${HOME}/.zshrc
echo 'eval "$(jenv init -)"'               >> ${HOME}/.zshrc

############
### node ###
############

mkdir ${HOME}/.nvm

echo 'export NVM_DIR="$HOME/.nvm"'        >> ${HOME}/.zshrc
echo 'source $(brew --prefix nvm)/nvm.sh' >> ${HOME}/.zshrc

############
### rust ###
############

/opt/homebrew/bin/rustup-init -y

${HOME}/.cargo/bin/rustup install 1.65

echo 'source ${HOME}/.cargo/env' >> ${HOME}/.zshrc

###############
### aliases ###
###############

echo "alias brewall='brew update &&                      \
                        brew upgrade &&                  \
                        brew upgrade --cask --greedy &&  \
                        mas upgrade &&                   \
                        brew cleanup'" >> ${HOME}/.zshrc
