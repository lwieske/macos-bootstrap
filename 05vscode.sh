#!/usr/bin/env bash

PATH=/opt/homebrew/bin:/opt/homebrew/sbin:${PATH}

brew install --cask visual-studio-code

for i in \
            aaron-bond.better-comments \
            amazonwebservices.aws-toolkit-vscode \
            bierner.markdown-preview-github-styles \
            davidanson.vscode-markdownlint \
            eamodio.gitlens \
            formulahendry.azure-storage-explorer \
            googlecloudtools.cloudcode \
            graphql.graphiql \
            gruntfuggly.todo-tree \
            hbenl.vscode-test-explorer \
            humao.rest-client \
            mhutchie.vscode-git-graph \
            ms-azure-devops.azure-pipelines \
            ms-azuretools.vscode-docker \
            ms-dotnettools.csharp \
            ms-dotnettools.vscode-dotnet-runtime  \
            ms-kubernetes-tools.vscode-kubernetes-tools \
            ms-ossdata.vscode-postgresql \
            ms-python.python \
            ms-toolsai.vscode-ai \
            ms-vscode-remote.vscode-remote-extensionpack \
            ms-vscode.azurecli \
            ms-vscode.go  \
            ms-vsliveshare.vsliveshare-pack \
            ply-ct.vscode-ply \
            redhat.vscode-yaml \
            rust-lang.rust \
            stkb.rewrap \
            vscjava.vscode-java-pack  \
            vscode-icons-team.vscode-icons \
            vscode-language-pack-de \
            yzane.markdown-pdf \
            yzhang.markdown-all-in-one
do
	code --install-extension ${i} >> /dev/null 2>&1
	echo "***> installed extension" ${i}
done

cat >${HOME}/Library/Application\ Support/Code/User/settings.json <<EOF
{
    "editor.fontFamily": "SF Mono",
    "editor.fontSize": 18,
    "terminal.integrated.fontSize": 18
}
EOF

echo "***> user setting font (family/size): 'SF Mono'/18"
