#!/bin/sh

function symlik_file() {
  base=${1}
  target=${2}

  if [ -L ${target} ]; then
    echo "${file} is already symlink. (not create symlink)"
  elif [ -e ${target} ]; then
    echo "${file} already exists. (not create symlink)"
  else
    ln -s ${base} ${target}
    echo "create symlink 'ln -s ${base} ${target}'"
  fi
}

###############
## ~/
###############
SETUP_LIST=(.peco .tmux.conf .vimrc .zsh .zshrc)
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
for subcommand in `ls ${CURRENT_DIR}/git-subcommands/*`;do
  file=$(basename ${subcommand})
  base=${subcommand}
  target=${HOME}/bin/${file}
  symlik_file ${base} ${target}
done
