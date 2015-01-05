export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"
#plugins=(git)


if [ -f $ZSH/oh-my-zsh.sh ];then
  source $ZSH/oh-my-zsh.sh
else
  echo 'Not Install oh-my-zsh!!(See https://github.com/robbyrussell/oh-my-zsh)'
fi

export PATH=$HOME/bin:$PATH

# editor
alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
alias vim=vi
EDITOR=vim
SVN_EDITOR=$EDITOR

TERM=xterm-256color

# ヒストリーで古いものと同じなら古いものを削除
setopt hist_ignore_all_dups

if [ -f ~/.zsh/.zshrc.tmux ]; then
  source ~/.zsh/.zshrc.tmux
fi

if [ -f ~/.zsh/.zshrc.rbenv ]; then
  source ~/.zsh/.zshrc.rbenv
fi

if [ -f ~/.zsh/.zshrc.peco ]; then
  source ~/.zsh/.zshrc.peco
fi
