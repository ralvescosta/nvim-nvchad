curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz
# now you need to add this path in your shell profile
# export PATH="$PATH:/opt/nvim-linux64/bin"
