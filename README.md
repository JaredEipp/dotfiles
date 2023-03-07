# Config for Neovim and Alacritty

**The following config requires you to have a smart font which supports glyphs.** 
The example used in this file is Ubuntu Mono Nerd Font Complete. The `.ttf` file for this font can be found [here](https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/UbuntuMono/Regular/complete/Ubuntu%20Mono%20Nerd%20Font%20Complete%20Mono.ttf).

## Alacritty
Most alacritty settings are left default besides the fonts and themes. The current theme in use is `catppuccin-mocha` and the repo for this theme can be found [here](https://github.com/catppuccin/alacritty)

## Neovim
The `init.lua` file is where all of the dependecies are managed, and ordering matters for this file. Currently, most do not depend on others, but there are cases where issues can be caused by certain plugins loading before others.

### Packer is the package manager for this setup

The file structure is as follows:
- `init.lua` -- handles dependencies
- `nvim/lua/core` -- handles neovim settings 
- `nvim/lua/plugins` -- handles plugin settings
- `nvim/lua/plugins/lsp` -- handles lsp settings
- `nvim/plugins` -- compiled lua files from Packer, not included in repo but is built after first run of nvim


## Nvim Plugins
TODO


## Environment Setup
The `.bashrc` file has a basic *like default* setup with a few customizations. The simple script at the beginning shows if the `cwd` is a git repo and shows the branch name wrapped in parenthesis **before** your `cwd`  and is N/A if not in a git repository. The PS1 var formatted looks like: `User@git branch)cwd~ ` where `User@` is [bold blue], `(git branch)`, if one exists, is [bold red]. If no git repo exists for the `cwd` then this part is omitted. The `cwd~ ` is [bold green].
**NOTE** If this `.bashrc` file is being installed on a remote server accessed over `ssh`, then changing the name to `.bash_profile` will cause it to be loaded at login

There is also the `LS_COLORS.txt` file that allows you to hard code specific colors for the `ls` command. This can be loaded into your `LS_COLORS` environment variable by running the command `export LS_COLORS=$(cat PATH_TO_THIS_REPO/dotfiles/LS_COLORS.txt)`. 
**Note:** If setting this environment variable is not working for your setup or you have a mac, there is an alias in the `.bashrc` that changes `ls` to `ls --color=auto` using an alias. This is redundant if you set the env, but in certain situations it can be easier.
