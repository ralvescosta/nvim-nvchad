# My Personal NvChad Configurations

This repository contains my personal configurations for Neovim using the NvChad framework. These settings are tailored to enhance productivity and streamline the development workflow.

## Install Neovim

Follow these steps to install Neovim on your system:

```bash
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz
## Usage

After cloning the repository and installing the necessary tools, open Neovim by running `nvim`. Your custom configurations will be loaded automatically.
After installation, add Neovim to your system's PATH by including the following line in your shell profile (e.g., `~/.bashrc`, `~/.zshrc`):

```bash
export PATH="$PATH:/opt/nvim-linux64/bin"
```

## Install Required Tools

To ensure full functionality of the configurations, install the following tools:

```bash
sudo apt install xclip
sudo apt install ripgrep
go install github.com/jesseduffield/lazygit@latest
go install github.com/google/yamlfmt/cmd/yamlfmt@latest
go install github.com/jessfraz/dockfmt@latest
go install golang.org/x/tools/cmd/goimports@latest
go install github.com/jesseduffield/lazydocker@latest
asdf reshim golang
npm install -g cspell
npm install -g prettier
asdf reshim nodejs
cargo install taplo-cli
```

## Download and Configure NerdFonts

NerdFonts provides a collection of patched fonts that include icons. Follow these steps to download and configure them:

1. Visit the NerdFont download page: [NerdFonts Download](https://www.nerdfonts.com/font-downloads).
2. Select your desired font and download the zip file.
3. Extract the contents of the zip file into the following directory:

Extract the zipper folder in this directory

```
~/.local/share/fonts/
```

And configure in your terminal the font you will use


## Clone This Repository

To clone this repository and set up your Neovim configuration, run the following command:

```bash
```bash
git clone git@github.com:ralvescosta/nvim-nvchad.git ~/.config/nvim
nvim
```
