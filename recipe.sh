#!/bin/bash

clear

echo "Adding PPA..."
echo "Neovim"
sudo add-apt-repository ppa:neovim-ppa/stable

echo "Moka icons"
sudo add-apt-repository ppa:moka/daily

echo "Emacs"
sudo add-apt-repository ppa:kelleyk/emacs

echo "Updating & Installing..."
sudo apt-get update
sudo apt-get install git zsh neovim feh lxappearance compton rofi i3 i3blocks tmux arc-theme moka-icon-theme curl emacs25

echo "Vundle"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "Base16-shell"
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

echo "Powerline fonts"
git clone https://github.com/powerline/fonts $HOME/fonts
$HOME/fonts/install.sh

echo "Setting things up..."
echo "Neovim"
mkdir $HOME/.config/nvim/
ln -s $HOME/dotfiles/init.vim $HOME/.config/nvim/init.vim
update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
update-alternatives --config vi
update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
update-alternatives --config vim
update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60
update-alternatives --config editor
vim +PluginInstall +qall

echo "Emacs"
ln -s $HOME/dotfiles/emacs.d/init.el ~/.emacs.d/init.el
ln -s $HOME/dotfiles/emacs.d/lisp/ ~/.emacs.d/

echo "i3"
ln -s $HOME/dotfiles/.config/i3/ $HOME/.config/

echo "Zsh"
ln -s $HOME/dotfiles/.zshrc $HOME/.zshrc

echo "Vimperator"
ln -s $HOME/dotfiles/.vimperatorrc $HOME/.vimperatorrc

echo "Git"
ln -s $HOME/dotfiles/.gitconfig $HOME/.gitconfig
ln -s $HOME/dotfiles/.gitignore_global $HOME/.gitignore_global

echo "Fonts"
cp -R $HOME/dotfiles/.fonts $HOME/.fonts

echo "Wallpaper"
cp $HOME/dotfiles/Pictures/fallout.jpg $HOME/Pictures/fallout.jpg

echo "Git Custom Scripts"
ln -s $HOME/dotfiles/git/git-prp $HOME/bin/git-prp

echo "Fixing right"
chown -R pixelcake:pixelcake ~/.local

echo "Done! Here is what is left to do:"
echo " - set the font for the terminal"
echo " - set theme and icon in lxappearance"
echo " - log into i3, but do not create the config file"
echo " - installing vimperator and firefox theme https://addons.mozilla.org/en-US/firefox/collections/horst3180/a/"

echo "Moving to OhMyZsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
