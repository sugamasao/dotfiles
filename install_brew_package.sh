function is_installed () {
   echo $(ls -1 "$(brew --prefix)/Cellar/" | grep -E ^${1}) 
}

package=(
 openssl
  git
  tig
  gh
  ghq
  imagemagick
  zsh
  tmux
  tree
  peco
  git-delta
  bat
  exa
  fd
  ripgrep
  nvim
)

for pkg in "${package[@]}"; do
  echo "install package ${pkg}"
  if [ -z `is_installed ${pkg}` ];then
    echo brew install ${pkg}
    brew install ${pkg}
  fi
done

# echo "install package ricty"
# if [ -z `is_installed ricty` ];then
#   echo brew install ricty
#   brew tap sanemat/font
#   brew install ricty
# fi

echo "install package nerd-font"
if [ -z `is_installed nerd-font` ];then
  echo brew install 
  brew tap homebrew/cask-fonts
  brew install --cask font-hack-nerd-font
fi

echo "done."
