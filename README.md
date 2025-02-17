# My personal NvChad configurations

## Install nvim

```bash
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz
```
Now you need to add this path in your shell profile

```bash
export PATH="$PATH:/opt/nvim-linux64/bin"
```

## Install tools

```bash
sudo apt install xclip
sudo apt install ripgrep
go install github.com/jesseduffield/lazygit@latest
go install github.com/google/yamlfmt/cmd/yamlfmt@latest
go install github.com/jessfraz/dockfmt@latest
go install golang.org/x/tools/cmd/goimports@latest
asdf reshim golang
npm install -g cspell
npm install -g prettier
asdf reshim nodejs
cargo install taplo-cli
```

## Download and configuration of NerdFonts

Go to the NedFont download page `https://www.nerdfonts.com/font-downloads`, select you desired font, download the zip folder.

Extract the zipper folder in this directory

```
~/.local/share/fonts/
```

And configure in your terminal the font you will use


## Clone this repository

```bash
git clone git@github.com:ralvescosta/nvim-nvchad.git ~/.config/nvim && nvim
```
