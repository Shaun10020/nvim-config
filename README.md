# nvim-config
my personal nvim-config

## Windows nvim config location
~/AppData/Local/nvim/init.vim

## Linux install instruction
Pre-built archives

The Releases page provides pre-built binaries for Linux systems.
```
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim-linux-x86_64
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz
```
Then add this to your shell config (~/.bashrc, ~/.zshrc, ...):
```
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
```
