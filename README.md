# Tripurari's dotfile

#### Mac and Linux only ####

This repository is created for people who want to setup some cool vim configuration and plugins
in few simple step.

To setup just copy and paste these command 

```
1. git clone https://github.com/tripurari001/dotfile.git ~/.vim

2. cd ~/.vim && chmod +x install.sh && ./install.sh
```
This will install [Solarized color scheme](http://ethanschoonover.com/solarized) for vim. If you are using vim inside terminal
then please install this color scheme for your terminal also otherwise this will not look good in terminal.

To install Solarized color scheme for ubuntu or Gnome terminal visit [this link](https://github.com/Anthony25/gnome-terminal-colors-solarized) and for Mac visit [this link](https://github.com/tomislav/osx-terminal.app-colors-solarized)

If you **don't** want to use **Solarized color scheme** then remove following from your ``` $HOME/.vim/vimrc ```

```
set background=dark
colorscheme solarized
```
