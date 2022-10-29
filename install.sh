#!/bin/bash

# install packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# install the various tools and language servers
npm install -g @angular/language-server
npm install -g @ansible/ansible-language-server
npm i -g bash-language-server
npm install -g dockerfile-language-server-nodejs
npm i -g vscode-langservers-extracted

go install github.com/nametake/golangci-lint-langserver@latest
go install github.com/golangci/golangci-lint/cmd/golangci-lint@latest
go install golang.org/x/tools/gopls@latest

npm i -g vscode-langservers-extracted
npm i -g vscode-langservers-extracted

rustup component add rust-src
rustup component add rust-analyzer

npm install -g @tailwindcss/language-server
npm install -g typescript typescript-language-server
yarn global add yaml-language-server

cargo install ripgrep
