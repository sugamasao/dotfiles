#!/bin/sh

function symlik_file() {
  base=${1}
  target=${2}

  if [ -L ${target} ]; then
    echo "😌 ${target} is already symlink. (not create symlink)"
  elif [ -e ${target} ]; then
    echo "🤔 ${target} already exists. (not create symlink)"
  else
    ln -s ${base} ${target}
    if [ $? -eq 0  ]; then
      echo "🙆 create symlink 'ln -s ${base} ${target}'"
    else
      echo "❌ failed 'ln -s ${base} ${target}'"
    fi
  fi
}

###############
## ~/
###############
SETUP_LIST=(.peco .tmux.conf .vimrc .vim .zsh .zshrc .gemrc .gitconfig .gitignore .gitattributes)
CURRENT_DIR=$(cd $(dirname $0) && pwd)

for file in ${SETUP_LIST[@]};do
  base=${CURRENT_DIR}/${file}
  target=${HOME}/${file}
  symlik_file ${base} ${target}
done

###############
## ~/bin
###############
mkdir -p ~/bin
CURRENT_DIR=$(cd $(dirname $0) && pwd)
for subcommand in `ls ${CURRENT_DIR}/git-subcommands/*`;do
  file=$(basename ${subcommand})
  base=${subcommand}
  target=${HOME}/bin/${file}
  symlik_file ${base} ${target}
done

###############
## ~/.config
###############
mkdir -p ~/.config
SETUP_LIST=(nvim bat)
CURRENT_DIR=$(cd $(dirname $0) && pwd)

for dir in ${SETUP_LIST[@]};do
  base=${CURRENT_DIR}/config/${dir}
  target=${HOME}/.config/${dir}
  symlik_file ${base} ${target}
done

