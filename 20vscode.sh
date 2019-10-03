#!/usr/bin/env bash

for i in \
            amazonwebservices.aws-toolkit-vscode \
            davidanson.vscode-markdownlint \
            eg2.vscode-npm-script \
            formulahendry.azure-storage-explorer \
            googlecloudtools.cloudcode \
            humao.rest-client \
            mauve.terraform \
            ms-azure-devops.azure-pipelines \
            ms-azuretools.vscode-docker \
            ms-kubernetes-tools.vscode-kubernetes-tools \
            ms-python.anaconda-extension-pack \
            ms-python.python \
            ms-vscode-remote.remote-ssh \
            ms-vscode-remote.remote-wsl \
            ms-vscode.azurecli \
            ms-vscode.go \
            ms-vscode.vscode-node-azure-pack \
            ms-vsliveshare.vsliveshare \
            redhat.vscode-yaml \
            rust-lang.rust \
            vscode-icons-team.vscode-icons \
            vscoss.vscode-ansible \
            yzhang.markdown-all-in-one
do
    code --install-extension ${i}
done