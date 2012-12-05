#!/bin/bash
if [ "$1" == "" ]; then
  echo ""
  echo "Usage to install digitalcardboard/amix's vimrc:"
  echo "   sh .vim_runtime/install.sh <system>"
  echo "      - where <system> can be 'mac', 'linux' or 'windows'"
  exit 1
fi
if [ -f ~/.vimrc ]; then
  now=$(date +"%Y%m%d")
  cp -p ~/.vimrc ~/.vimrc.backup$now
fi
echo "
fun! MySys()
   return \"$1\"
endfun
set runtimepath=~/.vim_runtime,~/.vim_runtime/after,\$VIMRUNTIME
source ~/.vim_runtime/vimrc" > ~/.vimrc
echo "Installed digitalcardboard/amix's vim configuration successfully! Enjoy :)"
echo "To enable the Command-T plugin: cd ~/.vim_runtime/ruby/command-t; ruby extconf.rb; make"
