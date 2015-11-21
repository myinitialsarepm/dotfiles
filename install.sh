#!/bin/sh
DOTFILE_DIR=$(cd $(dirname $0) && pwd = -P)
git --git-dir=$DOTFILE_DIR/.git --work-tree=$DOTFILE_DIR submodule update --init
git --git-dir=$DOTFILE_DIR/.git --work-tree=$DOTFILE_DIR submodule foreach git checkout master
git --git-dir=$DOTFILE_DIR/.git --work-tree=$DOTFILE_DIR submodule foreach ./install.sh
