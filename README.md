# Config for Neovim and Alacritty

**The following config requires you to have a smart font which supports glyphs.** 
The example used in this file is Ubuntu Mono Nerd Font Complete. The .ttf file for this font can be found [here](https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/UbuntuMono/Regular/complete/Ubuntu%20Mono%20Nerd%20Font%20Complete%20Mono.ttf).

## Alacritty
Most alacritty settings are left default besides the fonts and themes. The current theme in use is `catppuccin-mocha` and the repo for this theme can be found [here](https://github.com/catppuccin/alacritty)

## Neovim
The `init.lua` file is where all of the dependecies are managed, and ordering matters for this file. Currently, most do not depend on others, but there are cases where issues can be caused by certain plugins loading before others.

### Packer is the package manager for this setup

The file structure is as follows:
`init.lua` -- handles dependencies
`nvim/lua/core` -- handles neovim settings 
`nvim/lua/plugins` -- handles plugin settings
`nvim/lua/plugins/lsp` -- handles lsp settings
`nvim/plugins` -- compiled lua files from Packer, not included in repo but is built after first run of nvim


## Nvim Plugins
TODO
