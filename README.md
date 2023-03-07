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

The path for this file shoud be `$HOME/.bashrc`. If you have moved the file there and want to load it without restarting your termminal, the command `source $HOME/.bashrc` should do the trick.

**NOTE** If this `.bashrc` file is being installed on a remote server accessed over `ssh`, then changing the name to `.bash_profile` will cause it to be loaded at login

### Some Points to Note
- The command `eval $(dircolors -b)` will set your LS_COLORS environment variable, however, it can silently fail. You can check for success by running the command `export | grep 'LS_COLORS'`. Large output for that variable indicates success. If the `LS_COLORS` variable is not set, uncommenting the line  `alias ls='ls --color=auto'` will achieve a similar result.  **Note:** the `dircolors` command is exclusive to linux and does not work on mac.
- On a typical system, running `vi` aliases `vim` by default, however, I alias `vi` to `nvim` to shorthand my opening of neovim. If I want standard vim, I just ues the `vim` command, since that stays unchanged.

