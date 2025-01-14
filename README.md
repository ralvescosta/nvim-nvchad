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
sudo apt-get install ripgrep
go install github.com/jesseduffield/lazygit@latest
asdf reshim golang
```

## Clone this repository

```bash
git clone git@github.com:ralvescosta/nvim-nvchad.git ~/.config/nvim && nvim
```
