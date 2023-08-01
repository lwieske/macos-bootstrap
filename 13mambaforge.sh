#!/usr/bin/env bash

PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"

###############################################################################

# ask for the administrator password upfront
sudo -v

# keep-alive - update existing `sudo` time stamp until finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

###############################################################################

conda init zsh

source ~/.zshrc

# conda deactivate
# conda env remove --name tensorflow_m1
# conda env create --name tensorflow_m1 --file tensorflow_m1.yml
# conda activate tensorflow_m1
# python tensorflow_m1.py

conda deactivate
conda env remove --name pytorch_m1
conda env create --name pytorch_m1 --file pytorch_m1.yml
conda activate pytorch_m1
python pytorch_m1.py