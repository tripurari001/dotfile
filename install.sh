#!/bin/bash

# this is install script for vim, zsh and tmux 
# if you want to uninstall then plese run uninstall.sh 

echo ""
echo "                                 ########  ##    ##  "
echo "                                 ##     ##  ##  ##   "
echo "                                 ##     ##   ####    "
echo "                                 ########     ##     "
echo "                                 ##     ##    ##     "
echo "                                 ##     ##    ##     "
echo "                                 ########     ##     "
echo ""
echo " ######## ########  #### ########  ##     ## ########     ###    ########  #### "
echo "    ##    ##     ##  ##  ##     ## ##     ## ##     ##   ## ##   ##     ##  ##  "
echo "    ##    ##     ##  ##  ##     ## ##     ## ##     ##  ##   ##  ##     ##  ##  "
echo "    ##    ########   ##  ########  ##     ## ########  ##     ## ########   ##  "
echo "    ##    ##   ##    ##  ##        ##     ## ##   ##   ######### ##   ##    ##  "
echo "    ##    ##    ##   ##  ##        ##     ## ##    ##  ##     ## ##    ##   ##  "
echo "    ##    ##     ## #### ##         #######  ##     ## ##     ## ##     ## #### "
echo ""
echo "please wait 3 sec"

sleep 3s


echo " "

echo "please make backup of your old .vim and .vimrc.(press y and continue if you don't know) "



  while true; do
    read -p " do you want to continue ? (y/n)" yn
    case $yn in
      [Yy]* ) break;;
      [Nn]* ) echo "Aborting..." ; exit;;
      * ) echo "Please answer yes or no.";
    esac
  done


#echo "making backup of old vim configration in oldVimBackup folder"
#
#sleep 1s 
#
#cd ~
#
#if [ ! -d ~/oldVimBackup ]; then 
#  mkdir ~/oldVimBackup
#else
#  echo "  A backup folder HOME/oldVimBackup already exists"
#  while true; do
#    read -p "Do you want to delete it (y/n) " yn
#    case $yn in
#      [Yy]* ) rm -r ~/oldVimBackup ; break;;
#      [Nn]* ) echo "please rename oldVimBackup folder and retry" ; exit;;
#      * ) echo "Please answer yes or no.";
#    esac
#  done
#fi
#
#command -v git >/dev/null 2>&1 || { echo >&2 "Git is not installed please install git first.  Aborting."; sleep 1; exit 1; }
#
#if [ -f ~/.vimrc ]; then 
#  mv ~/.vimrc ~/oldVimBackup/vimrc
#fi
#
#if [ -d ~/.vim ]; then 
#  mv ~/.vim ~/oldVimBackup/vim/
#fi


echo ""
echo "Installing new vim configuration"
sleep 2s
echo ""


#git clone https://github.com/tripurari001/dotfile.git ~/.vim

if [ -f ~/.vimrc ]; then 
  rm ~/.vimrc
fi

ln -s ~/.vim/vimrc ~/.vimrc

echo ""
echo "updating plugins "
sleep 2s
echo ""

cd ~/.vim

git submodule init

git submodule update

echo ""
echo "vim configration setup completed successfully "
sleep 2s
echo ""

#if [ -d ~/.vimrc ]; then 
#  if [ -L ~/.vimrc ]; then
#    echo "this is a link"
#    #rm "$LINK_OR_DIR"
#  else
#    echo "this is a directory"
#    #rmdir 
#  fi
#fi
