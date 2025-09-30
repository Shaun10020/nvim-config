# nvim-config
my personal nvim-config

## Windows nvim config location
~/AppData/Local/nvim/init.vim

## Linux install instruction
Pre-built archives

The Releases page provides pre-built binaries for Linux systems.
```
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf nvim-linux-x86_64
sudo tar -xzf nvim-linux-x86_64.tar.gz
```
Then add this to your shell config (~/.bashrc, ~/.zshrc, ...):
```
export PATH="$PATH:nvim-linux-x86_64/bin"
```

## Linux config location
```
~/.config/nvim/init.lua
```

## Linux Install packed font instruction
1. Create director ```.fonts``` at ```~```
2. Copy the desired ```.ttf``` file at the folder
3. Run ```fc-cache -fv ~/.fonts``` to update font cache
