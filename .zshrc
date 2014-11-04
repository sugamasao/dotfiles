export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"
#plugins=(git)

source $ZSH/oh-my-zsh.sh
export PATH=$HOME/bin:$PATH

# vim
alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
alias vim=vi
EDITOR=vim
TERM=xterm-256color

if [ -f ~/.zsh/.zshrc.tmux ]; then
  source ~/.zsh/.zshrc.tmux
fi

if [ -f ~/.zsh/.zshrc.rbenv ]; then
  source ~/.zsh/.zshrc.rbenv
fi

