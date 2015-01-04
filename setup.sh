#!/bin/sh

SETUP_LIST=(.peco .tmux.conf .vimrc .zsh .zshrc)
CURRENT_DIR=$(cd $(dirname $0) && pwd)

for file in ${SETUP_LIST[@]};do
  base=${CURRENT_DIR}/${file}
  target=${HOME}/${file}

  if [ -L ${target} ]; then
    echo "${file} is already symlink. (not create symlink)"
  elif [ -e ${target} ]; then
    echo "${file} already exists. (not create symlink)"
  else
    ln -s ${base} ${target}
    echo "create symlink 'ln -s ${base} ${target}'"
  fi
done

