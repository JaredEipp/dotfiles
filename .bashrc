parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\[\e[91m\]\$(parse_git_branch)\[\033[1;32m\]\W$ \[\033[0m\]"
export PATH="$HOME/.neovim/bin:$PATH"
eval "$(dircolors -b)"
alias vi='nvim'
#alias ls="ls --color=auto"
. "$HOME/.cargo/env"
